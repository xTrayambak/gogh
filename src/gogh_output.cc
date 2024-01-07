#include "gogh_output.h"
#include "shaders/fragment.h"

#include <LTexture.h>
#include <LOpenGL.h>
#include <LPainter.h>
#include <LLog.h>
#include <LDNDManager.h>
#include <LCompositor.h>
#include <LCursor.h>
#include <LSeat.h>
#include <LScene.h>

#include "gogh_compositor.h"
#include "globals.h"

GoghOutput::GoghOutput() {}

void GoghOutput::updateWallpaper()
{
	LLog::log("[gogh-output] Updating wallpaper!");
	if (wallpaperView->texture())
	{
		if (wallpaperView->texture()->sizeB() == sizeB())
		{
			wallpaperView->setBufferScale(scale());
			wallpaperView->setPos(pos());
		}

		delete wallpaperView->texture();
	}

	LTexture *ogWallpaper = LOpenGL::loadTexture("/home/tray/Wallpapers/background.jpg");

	if (!ogWallpaper)
	{
		LLog::error("[gogh-output] Failed to load wallpaper.");
		return;
	}
	else
	{
		LLog::log("[gogh-output] Loaded wallpaper!");
	}

	LRect srcRect = LRect(0);

	Float32 scaledWidth = Float32(size().w() * ogWallpaper->sizeB().h()) / Float32(size().h());

	if (scaledWidth >= ogWallpaper->sizeB().w())
	{
		srcRect.setW(ogWallpaper->sizeB().w());
		srcRect.setH((ogWallpaper->sizeB().w() * size().h()) / size().w());
        	srcRect.setY((ogWallpaper->sizeB().h() - srcRect.h()) / 2);
	}
	else
	{
		srcRect.setH(ogWallpaper->sizeB().h());
        	srcRect.setW((ogWallpaper->sizeB().h() * size().w()) / size().h());
        	srcRect.setX((ogWallpaper->sizeB().w() - srcRect.w()) / 2);
	}

	// Copy the srcRect of the original wallpaper and scale it to match the output buffer size
    	wallpaperView->setTexture(ogWallpaper->copyB(sizeB(), srcRect));
 
    	// Set the buffer scale of wallpaperView to match the output scale
    	wallpaperView->setBufferScale(scale());
 
    	// Delete the original wallpaper texture since we are using the scaled copy
    	delete ogWallpaper;
    	wallpaperView->setPos(pos());
}

void GoghOutput::fullDamage()
{
	bar->update();
	newDamage.clear();
	newDamage.addRect(rect());
}

void GoghOutput::initializeGL()
{
	wallpaperView = new LTextureView(nullptr, &Globals::compositor()->backgroundLayer);

	LRegion emptyRegion;
	wallpaperView->setTranslucentRegion(&emptyRegion);

	updateWallpaper();

	LLog::log("[gogh-output] Initializing bar!");
	bar = new GoghBar(this);
	Globals::scene()->handleInitializeGL(this);

	LLog::log("[gogh-output] Compiling shaders!");
	fragmentShader = LOpenGL::compileShader(
			GL_FRAGMENT_SHADER,
			FRAGMENT_SHADER
	);

	fullDamage();
	repaint();
	LLog::log("[gogh-output] Initialized OpenGL!");
}

void GoghOutput::moveGL()
{
	fullDamage();
	wallpaperView->setPos(pos());
	Globals::scene()->handleMoveGL(this);
	repaint();
}

void GoghOutput::resizeGL()
{
	Globals::scene()->handleResizeGL(this);
	bar->update();
	repaint();
}

void GoghOutput::paintGL()
{
	Globals::scene()->handlePaintGL(this);

	// If this output does not support hardware cursors, draw a software cursor instead.
	// This garbage looks awful, but it works:tm:.
	if (!cursor()->hasHardwareSupport(this))
	{
		Globals::compositor()->softwareCursor.setTexture(cursor()->texture());
		Globals::compositor()->softwareCursor.setPos(cursor()->rect().pos());
		Globals::compositor()->softwareCursor.setDstSize(cursor()->rect().size());
		Globals::compositor()->softwareCursor.setVisible(cursor()->visible());
		
		Globals::compositor()->softwareCursor.repaint();
	} else {
		Globals::compositor()->softwareCursor.setTexture(nullptr);
	}
}

void GoghOutput::uninitializeGL()
{
	Globals::scene()->handleUninitializeGL(this);

	LLog::log("[gogh-output] Uninitializing OpenGL; de-allocating wallpaper and bar!");

	if (wallpaperView->texture())
		delete wallpaperView->texture();

	delete wallpaperView;

	if (bar)
	{
		LLog::log("[gogh-output] Destroying bar!");
		delete bar;
		bar = nullptr;
	}
}
