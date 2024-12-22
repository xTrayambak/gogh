import std/logging
import ./[toplevel, point, output]
import pkg/cppstl/std_vector

{.push header: "<LSurface.h>".}

type
  SurfaceRole* {.importcpp: "Louvre::LSurface::Role", pure.} = enum
    Undefined = 0
    Toplevel = 1
    Popup = 2
    Subsurface = 3
    Cursor = 4
    DNDIcon = 5
    SessionLock = 6
    Layer = 7

  Surface* {.importcpp: "Louvre::LSurface", inheritable.} = object

proc `position=`*(surf: ptr Surface, newPos: Point) {.importcpp: "Louvre::LSurface::setPos".}
proc raiseSurface*(surf: ptr Surface) {.importcpp: "Louvre::LSurface::raise".}
proc setPosition*(surf: ptr Surface, x, y: int32) {.importcpp: "Louvre::LSurface::setPos".}
func getSize*(surf: Surface): Size {.importcpp: "Louvre::LSurface::size".}
func getRoleId*(surf: Surface): SurfaceRole {.importcpp: "Louvre::LSurface::roleId".}
func getToplevel*(surf: ptr Surface): ptr Toplevel {.importcpp: "Louvre::LSurface::toplevel".}
func outputs(surf: ptr Surface): CppVector[ptr Output] {.importcpp: "Louvre::LSurface::outputs".}
proc `minimized=`*(surf: ptr Surface, state: bool) {.importcpp: "Louvre::LSurface::setMinimized".}
proc `maximized=`*(surf: ptr Surface, state: bool) {.importcpp: "Louvre::LSurface::setMaximized".}
func hasPointerFocus*(surf: Surface): bool {.importcpp: "Louvre::LSurface::hasPointerFocus".}
func hasKeyboardFocus*(surf: Surface): bool {.importcpp: "Louvre::LSurface::hasKeyboardFocus".}
func hasKeyboardGrab*(surf: Surface): bool {.importcpp: "Louvre::LSurface::hasKeyboardGrab".}
proc requestNextFrame*(surf: ptr Surface, clearDamage: bool = true) {.importcpp: "Louvre::LSurface::requestNextFrame".}
func preferVSync*(surf: Surface): bool {.importcpp: "Louvre::LSurface::preferVSync".}

{.pop.}

proc resize*(surf: ptr Surface, size: Size) {.inline.} =
  ## Asks the surface to resize its toplevel
  ## **NOTE**: This is merely a suggestion, the client can choose to ignore this request.
  debug "surface: resizing to " & $size & " (getting toplevel)"
  var toplevel = surf.getToplevel()
  if toplevel == nil:
    warn "surface: cannot resize as toplevel is NULL!"
    return

  toplevel.configureSize(size)

proc requestExit*(surf: ptr Surface) {.inline.} =
  ## Asks the surface to close its toplevel
  ## **NOTE**: This is simply a suggestion, the client can choose to ignore this
  ##           or show a dialog asking the user for confirmation beforehand.
  var toplevel = surf.getToplevel()
  if toplevel == nil:
    warn "surface: cannot request surface to exit as toplevel is NULL!"
    return

  toplevel.close()

func focused*(surf: Surface): bool {.inline.} =
  ## Check if either the keyboard or cursor are focused on this window
  surf.hasPointerFocus() or surf.hasKeyboardFocus()

func getOutputs*(surf: ptr Surface): seq[ptr Output] {.inline.} =
  surf
    .outputs()
    .toSeq()
