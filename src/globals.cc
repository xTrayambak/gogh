#include "globals.h"
#include "gogh_compositor.h"

LScene *Globals::scene()
{
	return &compositor()->scene;
}

void Globals::moveSurfaceWithChildren(GoghSurface *surface, LView *parent, bool subsurfacesOnly)
{
    surface->view.setParent(parent);
    GoghSurface *next = surface;
 
    if (subsurfacesOnly)
    {
        while ((next = (GoghSurface*)next->nextSurface()))
            if (next->isSubchildOf(surface) && next->subsurface())
                next->view.setParent(parent);
    }
    else
        while ((next = (GoghSurface*)next->nextSurface()))
            if (next->isSubchildOf(surface))
                next->view.setParent(parent);
}
