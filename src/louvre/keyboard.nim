import ./[surface, keyboard_key_event, factory_object]
import pkg/cppstl/std_vector

{.pragma: immutable, codegenDecl: "const $1 $2".}

{.push header: "<LKeyboard.h>".}

type
  Keyboard* {.importcpp: "Louvre::LKeyboard", inheritable.} = object of FactoryObject

proc `=copy`*(dest: var Keyboard, src: Keyboard) {.error: "Keyboard type cannot be copied!".}
proc setFocus*(keyboard: ptr Keyboard, surface: ptr Surface) {.importcpp: "Louvre::LKeyboard::setFocus".}
func focused*(keyboard: Keyboard): ptr Surface {.importcpp: "Louvre::LKeyboard::focus".}
func pressed*(keyboard: Keyboard, keyCode: uint32): bool {.importcpp: "Louvre::LKeyboard::isKeyCodePressed".}
func pressedKeysInternal(keyboard: Keyboard): CppVector[uint32] {.importcpp: "Louvre::LKeyboard::pressedKeys".}

# Virtual methods
proc keyEvent*(keyboard: ptr Keyboard, event {.immutable.}: var KeyboardKeyEvent) {.importcpp: "Louvre::LKeyboard::keyEvent", member.}
proc focusChanged*(keyboard: ptr Keyboard) {.importcpp: "Louvre::LKeyboard::focusChanged", member.}

{.pop.}

func pressedKeys*(keyboard: Keyboard): seq[uint32] {.inline.} =
  keyboard
    .pressedKeysInternal()
    .toSeq()
