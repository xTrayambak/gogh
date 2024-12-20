import ./namespaces

{.push header: "<LEvent.h>".}

type
  EventType* {.importcpp: "Louvre::LEvent::Type", pure.} = enum
    Pointer
    Keyboard
    Touch

  EventSubtype* {.importcpp: "Louvre::LEvent::Subtype", pure.} = enum
    Enter
    Leave
    Up
    Down
    Move
    Button
    Key
    Modifiers
    Scroll
    Frame
    Cancel
    SwipeBegin
    SwipeUpdate
    SwipeEnd
    PinchBegin
    PinchUpdate
    PinchEnd
    HoldBegin
    HoldEnd

  Event* {.importcpp: "Louvre::LEvent", inheritable.} = object

func type*(event: Event): EventType {.importcpp: "Louvre::LEvent::type".}
func subtype*(event: Event): EventSubtype {.importcpp: "Louvre::LEvent::subtype".}
func `serial=`*(event: var Event, serial: uint32) {.importcpp: "Louvre::LEvent::setSerial".}
func serial*(event: Event): uint32 {.importcpp: "Louvre::LEvent::serial".}
func ms*(event: Event): uint32 {.importcpp: "Louvre::LEvent::ms".}
func `ms=`*(event: var Event, ms: uint32) {.importcpp: "Louvre::LEvent::setMs".}
func us*(event: Event): uint32 {.importcpp: "Louvre::LEvent::us".}
func `us=`*(event: var Event, ms: uint32) {.importcpp: "Louvre::LEvent::setUs".}
func copy*(event: Event): ptr Event {.importcpp: "Louvre::LEvent::copy".}

proc `=copy`*(dest: var Event, src: Event) {.inline.} =
  dest = src.copy()[]

{.pop.}
