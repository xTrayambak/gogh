{.push header: "<LColor.h>".}

type
  RGBAF* {.importcpp: "Louvre::LRGBAF", final.} = object
    r*, g*, b*, a*: float32

  RGBF* {.importcpp: "Louvre::LRGBF", final.} = object
    r*, g*, b*: float32

  SomeColor* = RGBAF | RGBF

{.pop.}

func `==`*(c1, c2: RGBAF): bool {.inline.} =
  c1.r == c2.r and
  c1.g == c2.g and
  c1.b == c2.b and
  c1.a == c2.a

func `==`*(c1, c2: RGBF): bool {.inline.} =
  c1.r == c2.r and
  c1.g == c2.g and
  c1.b == c2.b

func rgba*[T: SomeNumber](r, g, b, a: T): RGBAF {.inline.} =
  RGBAF(
    r: r.float32,
    g: g.float32,
    b: b.float32,
    a: a.float32
  )

func rgb*[T: SomeNumber](r, g, b: T): RGBF {.inline.} =
  RGBF(
    r: r.int32,
    g: g.int32,
    b: b.int32
  )
