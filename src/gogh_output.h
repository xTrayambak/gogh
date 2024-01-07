#ifndef GOGH_OUTPUT_H_
#define GOGH_OUTPUT_H_

#include <LOutput.h>
#include <GL/gl.h>
#include "gogh_bar.h"

using namespace Louvre;

class GoghOutput : public LOutput
{
public:
	GoghOutput();

	void initializeGL() override;
	void moveGL() override;
	void resizeGL() override;
	void paintGL() override;
	void uninitializeGL() override;
	void fullDamage();
	
	// The wallpaper of the desktop.
	LTextureView *wallpaperView = nullptr;
	void updateWallpaper();
	
	// List of new damage calculated in previous frames
	bool damageListCreated = false;
	std::list<LRegion*>prevDamageList;

	// New damage calculated this frame
	LRegion newDamage;

	LRect lastRect;

	GLuint fragmentShader;

	GoghBar *bar = nullptr;
};

#endif
