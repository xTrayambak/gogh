#include <LLauncher.h>
#include <LLog.h>
#include <unistd.h>

#include "Compositor.h"

int main(int, char *[])
{
    /* Enable Louvre fatal logs */
    setenv("LOUVRE_DEBUG", "1", 0);

    /* Enable SRM fatal logs */
    setenv("SRM_DEBUG", "1", 0);

    /* If not set, the iGPU will be used as the primary GPU. */
    // setenv("SRM_ALLOCATOR_DEVICE", "/dev/dri/card1", 0);

    /* Enable triple buffering when using the DRM backend (provides a smoother experience but consumes more CPU) */
    // setenv("SRM_RENDER_MODE_ITSELF_FB_COUNT", "3", 0);

    /* Same but for non-primary GPUs */
    // setenv("SRM_RENDER_MODE_PRIME_FB_COUNT", "3", 0);
    // setenv("SRM_RENDER_MODE_DUMB_FB_COUNT", "3", 0);
    // setenv("SRM_RENDER_MODE_CPU_FB_COUNT", "3", 0);

    /* Force OpenGL buffer allocation instead of GBM when using the DRM backend */
    // setenv("SRM_FORCE_GL_ALLOCATION", "1", 0);

    /* The legacy DRM API supported async hw cursor updates */
    // setenv("SRM_FORCE_LEGACY_API", "1", 0);

    /* Enable Wayland for Firefox */
    setenv("MOZ_ENABLE_WAYLAND", "1", 1);

    /* Enable Wayland for Qt apps */
    setenv("QT_QPA_PLATFORM", "wayland-egl", 1);

    /* Enable Wayland for GTK apps */
    setenv("GDK_BACKEND", "wayland", 1);

    /* The Wayland socket that apps started with LLauncher will listen to */
    setenv("LOUVRE_WAYLAND_DISPLAY", "wayland-2", 0);

    /* Starts an auxiliary daemon allowing shell commands to be run via LLauncher::launch().
     * Note: If you decide not to use this daemon be careful when forking after LCompositor is started, as libseat and other
     * subsystems might leak resources and interfere with the session if not handled properly. */
    LLauncher::startDaemon();

    Compositor compositor;

    LLog::init();

    /* You can load a custom input and graphics backend here. For more details, see the LCompositor documentation.
     * By default, if the WAYLAND_DISPLAY environment variable is set, the Wayland backends will be loaded,
     * otherwise, if launched from a free TTY, the DRM and Libinput backends will be used.*/

    if (!compositor.start())
    {
        LLog::fatal("Failed to start compositor.");
        return EXIT_FAILURE;
    }

    /* Main thread loop, use LCompositor::fd() to get a pollable fd if needed. */
    while (compositor.state() != LCompositor::Uninitialized)
        compositor.processLoop(-1);

    return EXIT_SUCCESS;
}
