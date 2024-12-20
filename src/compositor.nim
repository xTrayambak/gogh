import std/[os, logging, random, tables]
import louvre
import pkg/pretty
import ./[sugar, layout]

{.pragma: immutable, codegenDecl: "const $1 $2".}

type
  Gogh* = object of Compositor
    layout*: Layout

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
  gogh.layout.output = outputs[0] # TODO: multi-output support

proc layoutSurfaces(compositor: ptr Gogh) =
  var comp = cast[ptr Compositor](compositor)
  var surfaces = comp[].getSurfaces()
  var numIdMap: Table[int, int]
  
  for i, pSurface in surfaces:
    let role = pSurface[].getRoleId()
    echo role

    if role == SurfaceRole.Toplevel:
      let id = compositor.layout.add(pSurface)
      numIdMap[i] = id

  print numIdMap

  compositor.layout.compute()

  #[for i, pSurface in surfaces:
    if not numIdMap.contains(i):
      continue

    let pos = compositor.layout.getPosition(numIdMap[id]) # LPoint
    pSurface.position = pos]#

proc createObjectRequest(compositor: ptr Gogh, objectType: FactoryObjectType, params {.immutable.}: pointer): ptr FactoryObject {.virtual.} =
  debug "gogh: createObjectRequest(): typ = " & $objectType
  if objectType == LSurface:
    compositor.layoutSurfaces()

  return nil
