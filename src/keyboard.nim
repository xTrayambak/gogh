import louvre

{.pragma: immutable, codegenDecl: "const $1 $2".}

type
  GoghKeyboard* {.codegenDecl: FactoryDerivation.} = object of Keyboard

proc keyEvent*(kb: ptr GoghKeyboard, event {.immutable.}: ptr KeyboardKeyEvent) {.virtual: "$1('2 #2) override".} =
  assert off
