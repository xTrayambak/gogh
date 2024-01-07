#include <LOutput.h>
#include <LLog.h>
#include <LSceneView.h>
#include <LCursor.h>
#include <LXCursor.h>
#include <LAnimation.h>

#include "gogh_output.h"
#include "gogh_keyboard.h"
#include "gogh_compositor.h"
#include "gogh_surface.h"
#include "gogh_pointer.h"
#include "gogh_seat.h"
#include "gogh_dndmgr.h"

GoghCompositor::GoghCompositor() : LCompositor(),
	scene(),
	backgroundLayer(scene.mainView()),
	surfacesLayer(scene.mainView()),
	overlayLayer(scene.mainView()),
	fullscreenLayer(scene.mainView()),
	cursorLayer(scene.mainView()),
	softwareCursor(nullptr, &cursorLayer)
{
	scene.mainView()->setClearColor(0.f, 0.f, 0.f, 1.f);

	softwareCursor.setDstSize(true);
}

void GoghCompositor::uninitialized()
{
	LLog::log("[gogh-compositor] Compositor is uninitializing! Deleting cursor.");
	if (defaultCursor)
		delete defaultCursor;
}

void GoghCompositor::cursorInitialized()
{
	LLog::log("[gogh-compositor] Cursor is initialized!");
	defaultCursor = LXCursor::loadXCursorB("arrow");
}

void GoghCompositor::fadeOutSurface(GoghSurface *surface, UInt32 ms)
{
    	if (!surface)
        	return;
 
	LSceneView tmp(surface->sizeB(), surface->bufferScale());
    	surface->capture(&tmp);
 
    	LTextureView *fadeOutView = new LTextureView(tmp.texture()->copyB(), &cursorLayer);
    	fadeOutView->setBufferScale(surface->bufferScale());
    	fadeOutView->enableParentOffset(false);
    	fadeOutView->setPos(surface->rolePos());
 
    	// Stack it below the software cursor view
    	fadeOutView->insertAfter(nullptr);
 
    	LAnimation::oneShot(ms,
 
        	// On Update
        	[this, fadeOutView](LAnimation *anim)
        	{
            		fadeOutView->setOpacity(1.f - anim->value());
            		repaintAllOutputs();
        	},
 
        	// On Finish
        	[this, fadeOutView](LAnimation *)
        	{
        		repaintAllOutputs();
            		delete fadeOutView->texture();
            		delete fadeOutView;
        	});
}

void GoghCompositor::destroyToplevelRoleRequest(LToplevelRole *toplevel)
{
	fadeOutSurface((GoghSurface*)toplevel->surface(), 400);
}

void GoghCompositor::destroyPopupRoleRequest(LPopupRole *popup)
{
	fadeOutSurface((GoghSurface*)popup->surface(), 50);
}

void GoghCompositor::destroySurfaceRequest(LSurface *surface)
{
	LLog::log("[gogh-compositor] Destroying surface");
	fadeOutSurface((GoghSurface*)surface, 400);
}

void GoghCompositor::initialized()
{
	takingScreenshot = true;
	LLog::log("[gogh-compositor] Initialized! Setting keyboard layout to qwerty");
	seat()->keyboard()->setKeymap(
		nullptr, nullptr,
		"qwerty", nullptr
	);

	LLog::log("[gogh-compositor] Seat backend ID is set to %d", seat()->inputBackendId());

	Int32 totalWidth = 0;
	
	LLog::log("[gogh-compositor] Initializing all outputs!");
	for (LOutput *output : seat()->outputs())
	{
		output->setScale(output->dpi() >= 200 ? 2 : 1);
		output->setPos(LPoint(totalWidth, 0));

		totalWidth += output->size().w();

		addOutput(output);
		output->repaint();
	}
}

LOutput *GoghCompositor::createOutputRequest()
{
	return new GoghOutput();
}

LKeyboard *GoghCompositor::createKeyboardRequest(LKeyboard::Params *params)
{
	return new GoghKeyboard(params);
}

LSurface *GoghCompositor::createSurfaceRequest(LSurface::Params *params)
{
	return new GoghSurface(params);
}

LPointer *GoghCompositor::createPointerRequest(LPointer::Params *params)
{
	return new GoghPointer(params);
}

LSeat *GoghCompositor::createSeatRequest(LSeat::Params *params)
{
    return new GoghSeat(params);
}

LDNDManager *GoghCompositor::createDNDManagerRequest(LDNDManager::Params *params)
{
	return new GoghDNDManager(params);
}
