#include <linux/input-event-codes.h>
#include <LCompositor.h>
#include <LSurface.h>
#include <LClient.h>
#include <LCursor.h>
#include <LOutput.h>
#include <unistd.h>

#include "gogh_keyboard.h"

GoghKeyboard::GoghKeyboard(Params *params) : LKeyboard(params) {}

void GoghKeyboard::keyEvent(UInt32 keyCode, KeyState keyState)
{
	sendKeyEvent(keyCode, keyState);

	bool L_CTRL = isKeyCodePressed(KEY_LEFTCTRL);
	bool L_SHIFT = isKeyCodePressed(KEY_LEFTSHIFT);
	bool mods = isKeyCodePressed(KEY_LEFTALT) && L_CTRL;
	xkb_keysym_t sym = keySymbol(keyCode);

	if (keyState == Released)
	{	
		// CTRL+T
		if (keyCode == KEY_T && L_CTRL)
		{
			if (fork() == 0)
				exit(system("foot"));
		}
		
		// CTRL + Q
		else if (L_CTRL && (sym == XKB_KEY_q || sym == XKB_KEY_Q))
		{
			if (focus())
				focus()->client()->destroy();
		}
		
		// Compositor-based screenshots
		// PrintScr
		else if (keyCode == KEY_PRINT)
		{
			if (cursor()->output()->bufferTexture(0))
			{
				const char *user = getenv("HOME");

				if (!user)
					return;

				char path[128];
				char timeString[32];

				time_t currTime;
				struct tm *timeInfo;

				time(&currTime);
				timeInfo = localtime(&currTime);
				strftime(timeString, sizeof(timeString), "%Y-%m-%d %H:%M:%S", timeInfo);

				sprintf(path, "%s/Screenshots/%s.png", user, timeString);

				printf("Saved screenshot to %s", path);

				cursor()->output()->bufferTexture(0)->save(path);
			}
		}
		
		// Quit compositor
		else if (keyCode == KEY_ESC && L_CTRL && L_SHIFT)
		{
			compositor()->finish();
			return;
		}

		// Copying and moving
		else if (L_CTRL && !L_SHIFT)
			seat()->dndManager()->setPreferredAction(LDNDManager::Copy);
		else if (!L_CTRL && L_SHIFT)
			seat()->dndManager()->setPreferredAction(LDNDManager::Move);
		else if (!L_CTRL && !L_SHIFT)
			seat()->dndManager()->setPreferredAction(LDNDManager::NoAction);
	}

	// Key press
	else
	{
		if (L_CTRL)
			seat()->dndManager()->setPreferredAction(LDNDManager::Copy);
		else if (L_SHIFT)
			seat()->dndManager()->setPreferredAction(LDNDManager::Move);
	}
}

void GoghKeyboard::keyModifiersEvent(UInt32 depressed, UInt32 latched, UInt32 locked, UInt32 group)
{
	sendModifiersEvent(depressed, latched, locked, group);
}
