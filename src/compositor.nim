import std/[logging]
import pkg/louvre
import sugar

type
  Gogh* = object of Compositor

proc initialized(gogh: ptr Gogh) {.virtual.}=
  info "gogh: initialized!"

  var comp = (ptr Compositor)gogh

  info "gogh: using Gogh " & $comp[].getVersion()

  comp.initialized()
