{.push header: "<LPoint.h>".}

type
  Point* {.importcpp: "Louvre::LPoint", inheritable.} = object
  Size* {.importcpp: "Louvre::LSize".} = Point#object of Point

func `x`*(point: Point): int32 {.importcpp: "@.x()".}
func `y`*(point: Point): int32 {.importcpp: "@.y()".}
func point*(x, y: int32): Point {.constructor: "LPoint(`x`, `y`);".}
func distanceFrom*(point1: ptr Point, point2: Point): int32 {.importcpp: "LPoint::distanceFrom".}

{.pop.}

func `$`*(point: Point): string {.inline.} =
  '(' & $point.x & ", " & $point.y & ')'
