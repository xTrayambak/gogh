#include <LDataDevice.h>
#include <LPointer.h>
#include <LOutput.h>
#include <LPoint.h>
#include <LKeyboard.h>
#include <LSceneView.h>
#include <LCursor.h>
#include <LCompositor.h>
#include <LLog.h>

#include "gogh_seat.h"
#include "globals.h"
#include "gogh_output.h"

GoghSeat::GoghSeat(Params *params) : LSeat(params) {}

bool GoghSeat::setSelectionRequest(LDataDevice *device)
{
	return (pointer()->focus() && pointer()->focus()->client() == device->client()) ||
		(keyboard()->focus() && keyboard()->focus()->client() == device->client());
}

void GoghSeat::outputPlugged(LOutput *output)
{
	LLog::log("[gogh-seat] New output plugged in!");

	output->setScale(output->dpi() >= 200 ? 2 : 1);

	LOutput *prev = compositor()->outputs().back();
	
	if (prev)
		output->setPos(LPoint(prev->pos().x() + prev->pos().x(), 0));
	else
		output->setPos(LPoint(0, 0));

	compositor()->addOutput(output);
	compositor()->repaintAllOutputs();
}

void GoghSeat::outputUnplugged(LOutput *output)
{
	LLog::log("[gogh-seat] Output unplugged!");
	compositor()->removeOutput(output);

	Int32 totalWidth = 0;

	for (GoghOutput *out : Globals::outputs())
	{
		out->setPos(LPoint(totalWidth, 0));
		totalWidth += out->size().w();
	}

	compositor()->repaintAllOutputs();
}

void GoghSeat::enabledChanged()
{
	if (!enabled())
		return;

	// Perform full damage on all outputs
	
	for (GoghOutput *output : Globals::outputs())
	{
		Globals::scene()->mainView()->damageAll(output);
		output->repaint();
	}
	
	cursor()->setVisible(false);
	cursor()->setVisible(true);
	cursor()->move(1, 1);
}
