#include <protocols/ScreenCopy/GScreenCopyManager.h>
#include <LLauncher.h>
#include <LTimer.h>
#include <LGlobal.h>
#include <LClient.h>
#include <LLog.h>

#include "Compositor.h"
#include "Output.h"
#include "Client.h"
#include "Surface.h"
#include "SessionLockManager.h"

#include "roles/ToplevelRole.h"
#include "roles/PopupRole.h"
#include "roles/LayerRole.h"
#include "roles/SubsurfaceRole.h"
#include "roles/SessionLockRole.h"
#include "roles/CursorRole.h"
#include "roles/DNDIconRole.h"

#include "utils/Settings.h"
#include "utils/Global.h"

#include "input/Seat.h"
#include "input/Pointer.h"
#include "input/Keyboard.h"
#include "input/Touch.h"
#include "input/Clipboard.h"
#include "input/DND.h"

void Compositor::initialized()
{
    setenv("WAYLAND_DISPLAY", getenv("LOUVRE_WAYLAND_DISPLAY"), 1);

    assets = std::make_unique<Assets>();
    systemd = std::make_unique<Systemd>();

    /* Configure already plugged input devices, check the Seat class */
    G::seat()->configureInputDevices();

    Int32 totalWidth { 0 };

    // Initializes and arranges outputs from left to right
    for (LOutput *output : seat()->outputs())
    {
        // Sets a scale factor of 2 when DPI >= 200
        output->setScale(output->dpi() >= 200 ? 2.f : 1.f);

        // Change it if any of your displays is rotated/flipped
        output->setTransform(LTransform::Normal);

        output->setPos(LPoint(totalWidth, 0));
        totalWidth += output->size().w();
        addOutput(output);
        output->repaint();
    }

    LLauncher::launch("foot zsh");
}

void Compositor::uninitialized()
{
    /* All factory objects, client resources and backends are still available at this point.
     * Textures should be released here before the graphic backend is uninitialized */

    assets.reset();
    systemd.reset();
}

void Compositor::relayout()
{
	/* This is triggered every time a new surface global is created or destroyed,
	 * in order to trigger a layout re-calculation. The function is oblivious
	 * as to which surface was just initialized, but it really doesn't need to
	 * know anyways. */
	LLog::log("New surface added! Woo!");

	int nSurface = -1;
	
	for (LSurface *surface : surfaces())
	{
		nSurface++;

		LLog::log("Surface #%i: w=%i, h=%i", nSurface, surface->size().w(), surface->size().h());
	}
}

LFactoryObject *Compositor::createObjectRequest(LFactoryObject::Type objectType, const void *params)
{
    if (objectType == LFactoryObject::Type::LOutput)
        return new Output(params);

    if (objectType == LFactoryObject::Type::LClient)
    {
	relayout();
        return new Client(params);
    }

    if (objectType == LFactoryObject::Type::LSurface)
        return new Surface(params);

    if (objectType == LFactoryObject::Type::LToplevelRole)
        return new ToplevelRole(params);

    if (objectType == LFactoryObject::Type::LPopupRole)
        return new PopupRole(params);

    if (objectType == LFactoryObject::Type::LSubsurfaceRole)
        return new SubsurfaceRole(params);

    if (objectType == LFactoryObject::Type::LSessionLockRole)
        return new SessionLockRole(params);

    if (objectType == LFactoryObject::Type::LCursorRole)
        return new CursorRole(params);

    if (objectType == LFactoryObject::Type::LDNDIconRole)
        return new DNDIconRole(params);

    if (objectType == LFactoryObject::Type::LSeat)
        return new Seat(params);

    if (objectType == LFactoryObject::Type::LPointer)
        return new Pointer(params);

    if (objectType == LFactoryObject::Type::LKeyboard)
        return new Keyboard(params);

    if (objectType == LFactoryObject::Type::LTouch)
        return new Touch(params);

    if (objectType == LFactoryObject::Type::LClipboard)
        return new Clipboard(params);

    if (objectType == LFactoryObject::Type::LDND)
        return new DND(params);

    if (objectType == LFactoryObject::Type::LSessionLockManager)
        return new SessionLockManager(params);

    /* Returning nullptr tells Louvre to use the default class for the given LFactoryObject type */
    return nullptr;
}

void Compositor::onAnticipatedObjectDestruction(LFactoryObject *object)
{
    if (object->factoryObjectType() == LFactoryObject::Type::LClient)
    {
        /* Bye bye client */
    }

    if (object->factoryObjectType() == LFactoryObject::Type::LSurface)
    {
	    relayout();
    }

    /* Do not delete the object! */
}

bool Compositor::createGlobalsRequest()
{
    /* The default imp creates all globals supported by Louvre */
    return LCompositor::createGlobalsRequest();
}

bool Compositor::globalsFilter(LClient *client, LGlobal *global)
{

#ifdef SETTINGS_XDG_DESKTOP_PORTAL_SCREENCAST_ONLY
    if (global->isType<Protocols::ScreenCopy::GScreenCopyManager>() && systemd && systemd->xdgDesktopPortalWlrPID != 0)
    {
        pid_t clientPID;
        client->credentials(&clientPID);

        if ((UInt32)clientPID != systemd->xdgDesktopPortalWlrPID)
            return false;
    }
#endif

    return true;
}
