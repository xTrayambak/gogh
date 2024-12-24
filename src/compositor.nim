import std/[os, logging, random, tables]
import louvre
import pkg/[vmath, pretty]
import ./[output, keyboard]
import ./[sugar, globals, config]

{.pragma: immutable, codegenDecl: "const $1 $2".}

type
  Gogh* = object of Compositor
    scene*: Scene

proc evaluateConfig(gogh: ptr Gogh) =
  debug "gogh: evaluating config"
  for cmd in getConfig().startup.exec:
    debug "gogh: executing startup command: " & cmd
    launchCommand(cmd)

proc initialized(gogh: ptr Gogh) {.virtual.} =
  info "gogh: initialized!"
  gogh.scene.addr.getMainView().clearColor = rgba(0, 0, 0, 1)
  loadConfig().setConfig()
  print getConfig()

  var comp = (ptr Compositor)gogh
  info "gogh: using Louvre " & $comp[].getVersion()

  globals.scene = gogh.scene.addr

  var seat = comp[].getSeat()[].getName()
  info "gogh: seat identifier: " & seat
  putEnv("XDG_SEAT", seat)

  comp.initialized()

  var outputs = comp[].getOutputs()
  assert(outputs.len > 0, "No outputs initialized.")

  debug "gogh: initializing all outputs"
  var totalWidth: int
  for i, pOutput in outputs:
    #[ if pOutput[].isNonDesktop:
      pOutput.leasable = true
      continue ]#

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
        debug "gogh: setting refresh rate for output #" & $i & " to " & $displayConfig.refreshRate & "Hz"
        pOutput.refreshRateLimit = displayConfig.refreshRate.int32

        pOutput.vsync = displayConfig.refreshRate <= 60'u16
      else:
        debug "gogh: user has explicitly asked for this output to be force-VSync'd"
        pOutput.vsync = true

    pOutput.scale = (if pOutput[].dpi >= 200: 2f else: 1f)
    pOutput.position = vec2(totalWidth.float, 0'f).toPoint()
    totalWidth += pOutput[].size.x()

    try:
      comp.addOutput(pOutput)
    except louvre.CannotAddOutput as exc:
      error "gogh: " & exc.msg
    
    debug "gogh: forcing output to repaint itself"
    pOutput.repaint()
  
  gogh.evaluateConfig()

proc surfaceCreationCallback(compositor: ptr Gogh) =
  for surface in Compositor(compositor[]).getSurfaces():
    let outputs = surface.getOutputs()
    if outputs.len < 1:
      warn "gogh: surface appears on no outputs!"
      continue

    let size = outputs[0][].size()

    surface.raiseSurface()
    surface.resize(size)

proc createObjectRequest(compositor: ptr Gogh, objectType: FactoryObjectType, params {.immutable.}: pointer): ptr FactoryObject {.virtual.} =
  # debug "gogh: createObjectRequest(): typ = " & $objectType
  if objectType == LSurface:
    compositor.surfaceCreationCallback()
  elif objectType == LOutput:
    debug "gogh: got request to create new output"
    {.emit: "return new `GoghOutput`(`params`);".}
  elif objectType == LKeyboard:
    debug "gogh: got request to create new keyboard"
    {.emit: "return new `GoghKeyboard`(`params`);".}

  return nil
