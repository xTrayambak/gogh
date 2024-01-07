#ifndef GOGH_TOPLEVEL_H_
#define GOGH_TOPLEVEL_H_

#include <LToplevelRole.h>

using namespace Louvre;

class GoghSurface;

class GoghToplevel : public LToplevelRole
{
public:
	GoghToplevel(Params *params);

	inline GoghSurface *surf() const
	{
		return (GoghSurface*) surface();
	};

	void configureRequest() override;
	void setMinimizedRequest() override;

    	void startResizeRequest(ResizeEdge edge) override;
    	void geometryChanged() override;
};

#endif
