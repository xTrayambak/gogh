import std/[os, logging]
import pkg/[colored_logger]
import pkg/cppstl/std_smartptrs
import louvre
import ./compositor

type
  InitializationFailed* = object of Defect

proc main {.inline.} =
  putEnv("LOUVRE_DEBUG", "4")
  putEnv("LOUVRE_WAYLAND_DISPLAY", "wayland-2")
  putEnv("XDG_CURRENT_DESKTOP", "gogh")
  putEnv("XDG_SESSION_TYPE", "wayland")
  putEnv("GDK_BACKEND", "wayland")
  putEnv("SDL_VIDEODRIVER", "wayland")
  addHandler(newColoredLogger())
  startLaunchDaemon()

  var gogh = makeUnique(Gogh)
  
  if not gogh.start():
    raise newException(InitializationFailed, "Cannot start compositor.")

  while gogh.getState() != CompositorState.Uninitialized:
    gogh.processLoop(-1)

  info "Exiting compositor..."
  stopLaunchDaemon()

when isMainModule:
  main()
