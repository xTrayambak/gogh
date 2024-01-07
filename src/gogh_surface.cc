#include <LCursor.h>
#include <LSurface.h>
#include <LView.h>
#include <LLog.h>
#include <LSceneView.h>

#include "gogh_surface.h"
#include "globals.h"
#include "gogh_compositor.h"

GoghSurface::GoghSurface(LSurface::Params *params) :
	LSurface(params),
	view(this, &Globals::compositor()->surfacesLayer)
{
	LLog::log("[gogh-surface] New surface created!");
	view.enableParentOffset(false);
}

void GoghSurface::minimizedChanged()
{
	if (minimized())
	{
		if (hasPointerFocus())
			seat()->pointer()->setFocus(nullptr);

		if (hasKeyboardFocus())
			seat()->keyboard()->setFocus(nullptr);
	}

	if (!toplevel())
	{
		view.setVisible(!minimized());
		return;
	}

	if (minimized())
	{
		minimizedOutput = primaryOutput();

		if (minimizedOutput)
		{
			LPointF localPos = rolePos() - minimizedOutput->pos();
			prevMinimizedPos = localPos / LSizeF(minimizedOutput->size());
		}
		else {
			minimizedOutput = Globals::outputs().front();
            		prevMinimizedPos = LPointF(0.25f, 0.25f);
		}

		LSceneView tmpScene(sizeB(), bufferScale());
		capture(&tmpScene);

		view.setVisible(false);
	}
	else
	{
		if (!minimizedOutput)
		{
			minimizedOutput = Globals::outputs().front();
			prevMinimizedPos = LPointF(.25f, .25f);
		}
		
		view.setVisible(true);
		raise();
	}
}

GoghOutput *GoghSurface::primaryOutput()
{
	GoghOutput *bestOutput = nullptr;
	UInt32 bestArea = 0;
	LRect surfaceRect;

	if (toplevel())
		surfaceRect = LRect(rolePos() + toplevel()->windowGeometry().pos(), toplevel()->windowGeometry().size());
	else if (popup())
		surfaceRect = LRect(rolePos() + popup()->windowGeometry().pos(), popup()->windowGeometry().size());
	else
		surfaceRect = LRect(rolePos(), size());

	/* Calculate the area of the surface intersected
     	 * with each output and return the one with the largest area */
    	for (GoghOutput *output : Globals::outputs())
    	{
        	// We use LRegion to intersect both rects
        	LRegion tmpRegion;
        	tmpRegion.addRect(surfaceRect);
        	tmpRegion.clip(output->rect());
 
        	LBox extents = tmpRegion.extents();
        	UInt32 area = (extents.x2 - extents.x1) * (extents.y2 - extents.y1);
 
        	if (area > bestArea)
        	{
            		bestArea = area;
            		bestOutput = output;
        	}
    	}
 
    return bestOutput;
}

void GoghSurface::roleChanged()
{
	if (cursorRole())
		view.setVisible(false);
	
	else if (dndIcon())
	{
		view.setParent(&Globals::compositor()->cursorLayer);
		view.insertAfter(nullptr, false);
		setPos(cursor()->pos());
	}
}

void GoghSurface::capture(LSceneView *sceneView)
{
	sceneView->setPos(rolePos());
	
	Globals::moveSurfaceWithChildren(this, sceneView, true);
	sceneView->render();

	while (!sceneView->children().empty())
		sceneView->children().front()->setParent(&Globals::compositor()->surfacesLayer);
}

void GoghSurface::orderChanged()
{
	GoghSurface *prev = (GoghSurface*)prevSurface();
	
	while (prev && prev->view.parent() != view.parent())
		prev = (GoghSurface*)prev->prevSurface();

	if (prev)
		view.insertAfter(&prev->view, false);
	else
		view.insertAfter(nullptr, false);
}
