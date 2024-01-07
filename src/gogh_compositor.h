#ifndef GOGH_COMPOSITOR_H_
#define GOGH_COMPOSITOR_H_

#include <LCompositor.h>
#include <LTexture.h>
#include <LScene.h>
#include <LLayerView.h>
#include <LToplevelRole.h>
#include <LPopupRole.h>
#include <LTextureView.h>
#include "gogh_surface.h"

using namespace Louvre;

class GoghCompositor : public LCompositor
{
public:
	GoghCompositor();

	void initialized() override;
	void uninitialized() override;
	
	/* Mechanism creation overrides.
	 * Currently, 
	 * LOutput is substituted by GoghOutput
	 * LKeyboard is substituted by GoghKeyboard
	 * LSurface is substituted by GoghSurface
	 * LPointer is substituted by GoghPointer
	 * LSeat is substituted by GoghSeat
	*/
	LOutput *createOutputRequest() override;
	LKeyboard *createKeyboardRequest(LKeyboard::Params *params) override;
	LSurface *createSurfaceRequest(LSurface::Params *params) override;
	LPointer *createPointerRequest(LPointer::Params *params) override;
	void destroyToplevelRoleRequest(LToplevelRole *toplevel) override;
	void destroyPopupRoleRequest(LPopupRole *popup) override;
	void destroySurfaceRequest(LSurface *surface) override;
	LSeat *createSeatRequest(LSeat::Params *params) override;
	LDNDManager *createDNDManagerRequest(LDNDManager::Params *params) override;

	void cursorInitialized() override;
	LXCursor *defaultCursor = nullptr;

	// Animations
	void fadeOutSurface(GoghSurface *surface, UInt32 ms);

	LScene scene;
	LLayerView backgroundLayer, surfacesLayer,
		   overlayLayer, fullscreenLayer, cursorLayer;

	LTextureView softwareCursor;

	bool takingScreenshot;
};

#endif
