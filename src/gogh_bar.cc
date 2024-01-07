#include "gogh_compositor.h"
#include "gogh_bar.h"
#include "gogh_output.h"
#include "globals.h"
#include <random>

#include <LLog.h>
#include <LPoint.h>
#include <LAnimation.h>
#include <LCompositor.h>

GoghBar::GoghBar(GoghOutput *output) :
	output(output),
	view(0.f, 0.f, 0.f, 0.794f, &Globals::compositor()->overlayLayer)
{
	LLog::log("[gogh-bar] Initialized!");
	update();

	GoghBar::slideIntoView(400);
}

void GoghBar::slideIntoView(UInt32 ms)
{
    	LAnimation::oneShot(ms,
 
        	// On Update
        	[this](LAnimation *anim)
        	{
			view.setColorFactor(1.f, 1.f, 1.f, anim->value());
            		// repaintAllOutputs();
        	},
 
        	// On Finish
        	[this](LAnimation *)
        	{
        		// repaintAllOutputs();
        	});
}

GoghBar::~GoghBar()
{
	while (!view.children().empty())
		delete view.children().back();
}

void GoghBar::update()
{
	view.setSize(output->sizeB().w(), 32);
	view.setPos(
			LPoint(output->pos().x(), output->sizeB().h() - 32)
	);

	output->repaint();
}
