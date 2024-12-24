{.push header: "<LKeyboardKeyEvent.h>".}

type
  KeyEventState* {.importcpp: "Louvre::LKeyboardKeyEvent::State", pure.} = enum
    Released = 0
    Pressed = 1

  KeyboardKeyEvent* {.importcpp: "Louvre::LKeyboardKeyEvent", final.} = object

func keyCode*(event: KeyboardKeyEvent): uint32 {.importcpp: "Louvre::LKeyboardKeyEvent::keyCode".}
func state*(event: KeyboardKeyEvent): KeyEventState {.importcpp: "Louvre::LKeyboardKeyEvent::state".}

{.pop.}
