#ifndef GOGH_SURFACE_H_
#define GOGH_SURFACE_H_

#include <LSurface.h>
#include <LSurfaceView.h>

#include "gogh_output.h"

using namespace Louvre;

class GoghSurface : public LSurface
{
public:
	GoghSurface(LSurface::Params *params);

	void roleChanged() override;
	void orderChanged() override;
	void minimizedChanged() override;

	GoghOutput *primaryOutput();

	void capture(LSceneView *sceneView);

	LSurfaceView view;

	GoghOutput *minimizedOutput = nullptr;

	LPointF prevMinimizedPos;
};

#endif
