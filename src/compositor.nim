import std/[os, logging, random, tables]
import louvre
import pkg/[vmath, pretty]
import ./[sugar]

{.pragma: immutable, codegenDecl: "const $1 $2".}

type
  Gogh* = object of Compositor

proc initialized(gogh: ptr Gogh) {.virtual.} =
  info "gogh: initialized!"

  var comp = (ptr Compositor)gogh
  info "gogh: using Louvre " & $comp[].getVersion()

  var seat = comp[].getSeat()[].getName()
  info "gogh: seat identifier: " & seat
  putEnv("XDG_SEAT", seat)

  comp.initialized()

  var outputs = comp[].getOutputs()
  assert(outputs.len > 0, "No outputs initialized.")

  launchCommand("foot")

proc surfaceCreationCallback(compositor: ptr Gogh) =
  for surface in Compositor(compositor[]).getSurfaces():
    let outputs = surface.getOutputs()
    if outputs.len < 1:
      warn "gogh: surface appears on no outputs!"
      continue

    let size = outputs[0][].getSize()

    surface.raiseSurface()
    surface.resize(size)

proc createObjectRequest(compositor: ptr Gogh, objectType: FactoryObjectType, params {.immutable.}: pointer): ptr FactoryObject {.virtual.} =
  # debug "gogh: createObjectRequest(): typ = " & $objectType
  if objectType == LSurface:
    compositor.surfaceCreationCallback()

  return nil
