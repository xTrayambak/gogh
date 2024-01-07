#include <LSeat.h>
#include <LPointer.h>
#include <LLog.h>
#include <LKeyboard.h>
#include <LDataSource.h>

#include "gogh_dndmgr.h"

GoghDNDManager::GoghDNDManager(Params *params) : LDNDManager(params) {}

void GoghDNDManager::startDragRequest()
{
	LLog::debug("[gogh-dndmanager] Drag request started!");

	if (origin()->hasPointerFocus())
		seat()->pointer()->setDraggingSurface(nullptr);
	else
		cancel();
}
