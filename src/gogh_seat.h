#ifndef GOGH_SEAT_H_
#define GOGH_SEAT_H_

#include <LSeat.h>

using namespace Louvre;

class GoghSeat : public LSeat
{
public:
	GoghSeat(Params *params);

	virtual bool setSelectionRequest(LDataDevice *device) override;
	
	void outputPlugged(LOutput *output) override;
	void outputUnplugged(LOutput *output) override;

	// TTY switching
	void enabledChanged() override;
};

#endif
