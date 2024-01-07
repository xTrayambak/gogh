#include <LLog.h>
#include <unistd.h>
#include <filesystem>

#include "utils.h"

using namespace Louvre;

bool sanityCheck()
{
	bool result = true;
	
	/* If you're not stupid, you should not disable this protection.
	 * If you're stupid, and God forbid you find someone who likes you, 
	 * you should use protection for the betterment of natural selection.
	*/
#ifndef DISABLE_ROOT_PROTECTION
	if (getuid() == 0)
	{
		LLog::fatal("[gogh-utils] Attempting to run gogh as root! This will not work, sorry. I don't create the rules, I just follow 'em. :P");
		result = false;
	}
#endif

	return result;
}
