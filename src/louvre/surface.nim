import ./point

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

{.pop.}

