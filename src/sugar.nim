import std/options

proc `*`*[T](opt: Option[T]): bool {.inline.} = 
  opt.isSome

proc `!`*[T](opt: Option[T]): bool {.inline.} =
  opt.isNone

proc `&`*[T](opt: Option[T]): T {.inline.} =
  opt.get()

template unreachable*() =
  assert false, "Unreachable"
