import std/[algorithm, os, logging, sequtils]
import pkg/[vmath, pretty, louvre, opengl]
import ./[output, keyboard, pointer]
import ./[sugar, globals, config]

{.pragma: immutable, codegenDecl: "const $1 $2".}

type Gogh* = object of Compositor
  scene*: Scene

proc evaluateConfig(gogh: ptr Gogh) =
  debug "gogh: evaluating config"
  for cmd in getConfig().startup.exec:
    debug "gogh: executing startup command: " & cmd
    launchCommand(cmd)

proc initialized(gogh: ptr Gogh) {.virtual.} =
  info "gogh: initialized!"
  loadConfig().setConfig()

  var comp = (ptr Compositor) gogh
  info "gogh: using Louvre " & $comp[].getVersion()

  var seat = comp[].getSeat()[].getName()
  info "gogh: seat identifier: " & seat
  putEnv("XDG_SEAT", seat)

  comp.initialized()

  var outputs = comp[].getOutputs()
  assert(outputs.len > 0, "No outputs initialized.")

  debug "gogh: initializing all outputs"
  var totalWidth: int
  for i, pOutput in outputs:
    if pOutput[].isNonDesktop:
      pOutput.leasable = true
      continue

    info "gogh: Monitor #" & $i
    info "gogh: Name: " & pOutput[].name
    info "gogh: Manufacturer: " & pOutput[].manufacturer
    info "gogh: Description: " & pOutput[].description

    let config = getConfig()

    if i < config.displays.len - 1:
      info "gogh: monitor has no user-specified configuration for it."

      #[ if pOutput[].preferVSync:
        debug "gogh: output #" & $i & " prefers VSync."
        pOutput.vsync = true ]#
    else:
      debug "gogh: monitor has user-specified configuration for it."
      let displayConfig = config.displays[i]

      if not displayConfig.forceVsync:
        debug "gogh: setting refresh rate for output #" & $i & " to " &
          $displayConfig.refreshRate & "Hz"
        pOutput.refreshRateLimit = displayConfig.refreshRate.int32

        pOutput.vsync = displayConfig.refreshRate <= 60'u16
      else:
        debug "gogh: user has explicitly asked for this output to be force-VSync'd"
        pOutput.vsync = true

    pOutput.scale = (if pOutput[].dpi >= 200: 2f else: 1f)
    pOutput.position = vec2(totalWidth.float, 0'f).toPoint()
    totalWidth += pOutput[].size.x()

    try:
      info "gogh: adding output " & $i
      comp.addOutput(pOutput)
    except louvre.CannotAddOutput as exc:
      error "gogh: " & exc.msg

    debug "gogh: forcing output " & $i & " to repaint itself"
    pOutput.repaint()
    gogh.scene.addr.getMainView().damageAll(pOutput)

  gogh.evaluateConfig()

proc getAllWindows(gogh: ptr Gogh): seq[ptr Surface] =
  ## Get all windows (surfaces that have toplevels attached to them)

  getSurfaces((Compositor) gogh[])
  .filterIt(it.getToplevel() != nil)
  .sortedByIt(it[].getSize().x)
  .reversed()

proc tile(gogh: ptr Gogh) =
  let borderSpace = getConfig().layout.borderGaps
  let surfaces = gogh.getAllWindows()

  if surfaces.len == 1:
    # If only one surface is present, "maximize" it

    let outputs = surfaces[0].getOutputs()
    if outputs.len < 1:
      return

    let output = outputs[0]
    let maxSize = output[].size()
    surfaces[0].resize(
      point(int32(maxSize.x.float - borderSpace), int32(maxSize.y.float - borderSpace))
    )
  elif surfaces.len > 0:
    let master = surfaces[0]
    let masterOutputs = surfaces[0].getOutputs()

    if masterOutputs.len < 1:
      return

    let masterOutput = masterOutputs[0]
    let masterSize = masterOutput[].size().x.float * 0.6
    
    # Make the master occupy
    master.resize(
      point(masterSize.int32, int32(masterOutput[].size.y.float - (2f * borderSpace)))
    )
    master.setPosition(borderSpace.int32, borderSpace.int32)
    master.raiseSurface()

    var
      x = masterSize + 3f * borderSpace
      y = borderSpace
      tileHeight = masterOutput[].size().x.float - masterSize - 5 * borderSpace

    for surface in surfaces[1 ..< surfaces.len]:
      surface.setPosition(x.int32, y.int32)
      surface.resize(
        point(
          tileHeight.int32, int32(masterOutput[].size().y.float / surfaces.len.float)
        )
      )
      surface.raiseSurface()
      y += masterOutput[].size().y.float / surfaces.len.float

proc surfaceCreationCallback(compositor: ptr Gogh) =
  compositor.tile()

proc onAnticipatedObjectDestruction(
    gogh: ptr Gogh, obj: ptr FactoryObject
) {.virtual.} =
  let typ = getFactoryObjectType(obj[])

  case typ
  of LSurface:
    if getToplevel(cast[ptr Surface](obj)) != nil:
      gogh.tile()
  else:
    discard

proc createObjectRequest(
    compositor: ptr Gogh, objectType: FactoryObjectType, params {.immutable.}: pointer
): ptr FactoryObject {.virtual.} =
  # debug "gogh: createObjectRequest(): typ = " & $objectType
  if objectType == LSurface:
    compositor.surfaceCreationCallback()
  elif objectType == LOutput:
    debug "gogh: got request to create new output"
    {.emit: "return new `GoghOutput`(`params`);".}
  elif objectType == LKeyboard:
    debug "gogh: got request to create new keyboard"
    {.emit: "return new `GoghKeyboard`(`params`);".}
  elif objectType == LPointer:
    debug "gogh: got request to create new pointer/cursor"
    {.emit: "return new `GoghPointer`(`params`);".}

  return nil
