import std/[atomics, logging]
import pkg/louvre
import ./[globals]

{.pragma: immutable, codegenDecl: "const $1 $2".}

type GoghPointer* {.codegenDecl: FactoryDerivation.} = object of Pointer

proc focusChanged*(gptr: ptr GoghPointer) {.virtual.} =
  debug "pointer: focused surface has changed"
  globals.focusedSurface.store(focus(((ptr Pointer) gptr)[]))
