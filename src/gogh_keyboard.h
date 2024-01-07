#ifndef GOGH_KEYBOARD_H_
#define GOGH_KEYBOARD_H_

#include <LKeyboard.h>

using namespace Louvre;

class GoghKeyboard : public LKeyboard
{
public:
	GoghKeyboard(Params *params);

	void keyEvent(UInt32 keyCode, KeyState keyState) override;
	void keyModifiersEvent(UInt32 depressed, UInt32 latched, UInt32 locked, UInt32 group) override;
};

#endif
