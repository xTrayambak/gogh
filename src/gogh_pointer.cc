#include <LCursor.h>
#include <LDNDManager.h>
#include <LLog.h>
#include <LSeat.h>
#include <LOutput.h>
#include <LSurface.h>
#include <LDNDIconRole.h>
#include <LToplevelRole.h>
#include <LKeyboard.h>
#include <LCompositor.h>
#include <LOutput.h>

#include "gogh_pointer.h"

GoghPointer::GoghPointer(Params *params) : LPointer(params) {}

void GoghPointer::pointerMoveEvent(Float32 x, Float32 y, bool absolute)
{
	if (absolute)
		cursor()->setPos(x, y);
	else
		cursor()->move(x, y);
	
	// Trigger a repaint in case we're using software cursors
	cursor()->repaintOutputs(true);

	// Update the drag & drop icon position
    	if (seat()->dndManager()->icon())
    	{
        	seat()->dndManager()->icon()->surface()->setPos(cursor()->pos());
        	seat()->dndManager()->icon()->surface()->repaintOutputs();
    	}

	if (resizingToplevel())
	{
		updateResizingToplevelSize(cursor()->pos());
		return;
	}

	if (movingToplevel())
	{
		updateMovingToplevelPos(cursor()->pos());

		movingToplevel()->surface()->repaintOutputs();

		if (movingToplevel()->maximized())
			movingToplevel()->configure(
					movingToplevel()->states() &~ LToplevelRole::Maximized
			);

		return;
	}

	if (seat()->dndManager()->dragging())
		setDraggingSurface(nullptr);

	if (draggingSurface())
	{
		sendMoveEvent();
		return;
	}

	/* Find the first surface under the cursor, so that we can tell that client 
	 * that it is focused.
	*/
	LSurface *surface = surfaceAt(cursor()->pos());

	if (surface)
	{
		LLog::debug("[gogh-pointer] Surface found under cursor at %s", cursor()->pos());
		if (focus() == surface)
		{
			LLog::debug("[gogh-pointer] Sending move event, surface is already focused.");
			sendMoveEvent();
		}
		else
		{
			LLog::debug("[gogh-pointer] Surface was not previously focused, notifying the client that it is under focus now.");
			setFocus(surface);
		}
	}
	else
	{
		/* There is no surface under the cursor.
		 * 1 - if there was a previously focused surface, un-focus it.
		 * 2 - set the cursor to be visible, if it was forced to be invisible previously.
		*/
		setFocus(nullptr);
		cursor()->useDefault();
		cursor()->setVisible(true);
	}
}

/* void GoghPointer::pointerAxisEvent(
		Float64 axisX, Float64 axisY, 
		Int32 discreteX, Int32 discreteY, 
		AxisSource source
)
{	
} */

void GoghPointer::pointerButtonEvent(Button button, ButtonState state)
{
	if (state == Released && button == Left)
		seat()->dndManager()->drop();

	if (!focus())
	{
		LSurface *surface = surfaceAt(cursor()->pos());

		if (surface)
		{
			if (
				seat()->keyboard()->grabbingSurface() && 
				seat()->keyboard()->grabbingSurface()->client() != surface->client())
			{
				seat()->keyboard()->setGrabbingSurface(nullptr, nullptr);
				dismissPopups();
			}

			if (!seat()->keyboard()->focus() || !surface->isSubchildOf(seat()->keyboard()->focus()))
			{
				seat()->keyboard()->setFocus(surface);
			}

			setFocus(surface);
			sendButtonEvent(button, state);
		}
		else
		{
			seat()->keyboard()->setGrabbingSurface(nullptr, nullptr);
			seat()->keyboard()->setFocus(nullptr);
			dismissPopups();
		}

		return;
	}

	sendButtonEvent(button, state);

	if (button != Left)
		return;

	if (state == Pressed)
	{
		LLog::debug("LMB pressed!");
		setDraggingSurface(focus());

		if (
				seat()->keyboard()->grabbingSurface() 
				&& seat()->keyboard()->grabbingSurface()->client() != focus()->client()
		)
		{
			seat()->keyboard()->setGrabbingSurface(nullptr, nullptr);
			dismissPopups();
		}

		if (!focus()->popup())
			dismissPopups();

		if (!seat()->keyboard()->focus() || !focus()->isSubchildOf(seat()->keyboard()->focus()))
			seat()->keyboard()->setFocus(focus());

		if (focus()->toplevel() && !focus()->toplevel()->activated())
			focus()->toplevel()->configure(
					focus()->toplevel()->states() | LToplevelRole::Activated
			);

		if (focus() == compositor()->surfaces().back())
			return;

		if (focus()->parent())
			focus()->topmostParent()->raise();
		else
			focus()->raise();
	}
	else
	{
		LLog::debug("[gogh-pointer] LMB released!");

		stopResizingToplevel();
		stopMovingToplevel();

		setDraggingSurface(nullptr);

		if (!focus()->inputRegion().containsPoint(cursor()->pos() - focus()->rolePos()))
		{
			seat()->keyboard()->setGrabbingSurface(nullptr, nullptr);
			setFocus(nullptr);
			cursor()->useDefault();
			cursor()->setVisible(true);
		}
	}
}

void GoghPointer::setCursorRequest(LCursorRole *role)
{
	/* If role isn't nullptr, it means that the client intends to show the cursor.
	 * If the role is nullptr, it means that the client intends to hide the cursor.
	*/
	if (role)
	{
		cursor()->setTextureB(
				role->surface()->texture(),
				role->hotspotB()
		);
		cursor()->setVisible(true);
	}
	else
		cursor()->setVisible(false);
}
