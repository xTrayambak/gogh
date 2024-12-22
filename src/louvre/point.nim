import pkg/vmath

{.push header: "<LPoint.h>".}

type
  Point* {.importcpp: "Louvre::LPoint", inheritable.} = object
  Size* {.importcpp: "Louvre::LSize".} = Point#object of Point

func `x`*(point: Point): int32 {.importcpp: "@.x()".}
func `y`*(point: Point): int32 {.importcpp: "@.y()".}
func distanceFrom*(point1: ptr Point, point2: Point): int32 {.importcpp: "LPoint::distanceFrom".}

{.pop.}

func `$`*(point: Point): string {.inline.} =
  '(' & $point.x & ", " & $point.y & ')'

func point*(x, y: int32): Point {.importcpp: "Louvre::LPoint(@);".}
#{.emit: "return Louvre::LPoint(`x`, `y`);".}

func toPoint*(vec: Vec2): Point {.inline.} =
  point(vec.x.int32, vec.y.int32)

func toVec*(point: Point): Vec2 {.inline.} =
  vec2(point.x().float32, point.y().float32)
