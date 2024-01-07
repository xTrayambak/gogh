#include "gogh_toplevel.h"
#include "gogh_surface.h"

#include <LSeat.h>
#include <LPointer.h>
#include <LCursor.h>

void GoghToplevel::startResizeRequest(ResizeEdge edge)
{
	if (!fullscreen() && !maximized() && surf()->hasPointerFocus())
		seat()->pointer()->startResizingToplevel(
			this,
			edge, cursor()->pos(), LSize(0, 0),
			LPointer::EdgeDisabled, 32
		);
}

void GoghToplevel::geometryChanged()
{
	if (resizing())
		updateResizingPos();
}
