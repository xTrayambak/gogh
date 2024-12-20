import std/[os, logging]
import louvre
import cppstl/[std_string, std_smartptrs]

{.pragma: immutable, codegenDecl: "const $1 $2".}

type
  NimSeat = object of Seat
  NimWM = object of Compositor

proc outputPlugged(seat: ptr NimSeat, output: ptr Output) {.virtual.} =
  assert off
  outputPlugged(cast[ptr Seat](seat), output)

proc onEvent(seat: ptr NimSeat, event {.immutable.}: var Event) {.virtual.} =
  assert off
  echo event.type
  echo event.subtype

proc initialized(compositor: ptr NimWM) {.virtual.} =
  info "Initialized!"
  
  var comp = cast[ptr Compositor](compositor)
  var seat = cast[ptr NimSeat](comp[].getSeat())
  let name = seat[].getName()
  var outputs = seat[].getOutputs()
  
  echo "Seat name: " & name
  echo "Num of outputs: " & $outputs.len

  comp.initialized()

  for i, output in outputs:
    echo "> Output " & $i & ": " & $output[].getState()

proc createObjectRequest(compositor: ptr NimWM, objectType: FactoryObjectType, params {.immutable.}: pointer): ptr FactoryObject {.virtual.} =
  if objectType == LSeat:
    echo "create NimSeat"
    
    var seat = constructSeat(NimSeat, params)
    echo typeof seat
    return seat

  echo "Can't instantiate: " & $objectType
  return nil

proc main =
  putEnv("LOUVRE_WAYLAND_DISPLAY", "wayland-2")
  initLouvreLogger()
  startLaunchDaemon()

  var compositor = makeUnique(NimWM)
  echo "Using Louvre " & $compositor.getVersion()

  if not compositor.start():
    echo "woops compositor died :("
    quit(1)

  while compositor.getState() != CompositorState.Uninitialized:
    compositor.processLoop(-1)
  
  stopLaunchDaemon()

  echo "bye bye!"

when isMainModule:
  main()
