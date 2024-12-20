import std/[os, logging]
import pkg/[colored_logger, louvre]
import pkg/cppstl/std_smartptrs
import ./compositor

type
  InitializationFailed* = object of Defect

proc main {.inline.} =
  putEnv("LOUVRE_DEBUG", "4")
  putEnv("LOUVRE_WAYLAND_DISPLAY", "wayland-2")
  addHandler(newColoredLogger())

  var gogh = makeUnique(Gogh)
  
  if not gogh.start():
    raise newException(InitializationFailed, "Cannot start compositor.")

  while gogh.getState() != CompositorState.Uninitialized:
    gogh.processLoop(-1)

  info "Exiting compositor..."

when isMainModule:
  main()
