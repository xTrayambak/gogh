#ifndef GLOBALS_H_
#define GLOBALS_H_

#include <LCompositor.h>
#include "gogh_surface.h"
#include "gogh_compositor.h"
#include "gogh_output.h"

using namespace Louvre;

class GoghCompositor;
class GoghOutput;

class Globals
{
public:
	static inline GoghCompositor *compositor()
	{
		return (GoghCompositor*)LCompositor::compositor();
	}

	static inline std::list<GoghOutput*> &outputs()
	{
		return (std::list<GoghOutput*>&)LCompositor::compositor()->outputs();
	}

	static inline std::list<GoghSurface*> &surfaces()
    	{
        	return (std::list<GoghSurface*>&)LCompositor::compositor()->surfaces();
    	}

	static LScene *scene();
	static void moveSurfaceWithChildren(GoghSurface *surface, LView *parent, bool subsurfacesOnly = false);
};

#endif
