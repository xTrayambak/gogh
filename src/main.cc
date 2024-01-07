#include <LCompositor.h>
#include <stdlib.h>
#include <LLog.h>

#include "gogh_compositor.h"
#include "utils.h"
 
using namespace Louvre;
 
int main()
{
	/* Set necessary environment variables
	 * Many applications will not work without these configured.
	*/

	// Tell all apps that wayland-0 is the display they need to connect to.
	setenv("DISPLAY", "wayland-0", 1);

	// Force all apps using GDK (GTK stuff) to use Wayland.
	setenv("GDK_BACKEND", "wayland", 1);

	// Force all Qt apps to use Wayland.
	setenv("QT_QPA_PLATFORM", "wayland", 1);

	/* Set the desktop environment to gogh and session type to wayland.
	 * Not really necessary, but trayfetch acts weirdly without them.
	 *
	 * Speaking of that, you should try out trayfetch :D
	*/
	setenv("XDG_CURRENT_DESKTOP", "gogh", 1);
	setenv("XDG_SESSION_TYPE", "wayland", 1);

	if (!sanityCheck())
	{
		LLog::log("[gogh-init] Sanity checks failed. Use LOUVRE_DEBUG=4 and re-run Gogh to find the cause. :(");
		return 1;
	}

	LLog::log("[gogh-init] Initializing compositor!");
	GoghCompositor compositor;
 
	if (!compositor.start())
    	{
        	LLog::log("[gogh-init] Failed to start compositor.");
        	return 1;
    	}

    	while (compositor.state() != LCompositor::Uninitialized)
        	compositor.processLoop(-1);
 
    	return 0;
}
