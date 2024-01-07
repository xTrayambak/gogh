#ifndef GOGH_DNDMGR_H_
#define GOGH_DNDMGR_H_

#include <LDNDManager.h>

using namespace Louvre;

class GoghDNDManager : public LDNDManager
{
public:
	GoghDNDManager(Params *params);

	void startDragRequest() override;
};

#endif
