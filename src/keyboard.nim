import std/[options]
import louvre
import libxkbcommon/evdev_scancodes
import ./[globals, keybind, sugar, config]
import pretty

{.pragma: immutable, codegenDecl: "const $1 $2".}

type GoghKeyboard* {.codegenDecl: FactoryDerivation.} = object of Keyboard
  cachedKeybinds*: Option[seq[Keybind]]

proc keyEvent*(
    kb: ptr GoghKeyboard, event {.immutable.}: var KeyboardKeyEvent
) {.virtual.} =
  var keyboard = cast[ptr Keyboard](kb)

  var binds =
    if *kb.cachedKeybinds:
      &kb.cachedKeybinds
    else:
      getConfig().binds

  let pressed = kb[].pressedKeys()

  var activatedBinding: Option[Keybind]
  for binding in binds:
    if binding.mainKey notin pressed:
      continue

    if *binding.modKey and &binding.modKey notin pressed:
      continue

    if *binding.key and &binding.key notin pressed:
      continue

    activatedBinding = some(deepCopy(binding))
    break

  kb.cachedKeybinds = some(move(binds))

  if !activatedBinding:
    keyboard.keyEvent(event) # Propagate the event to the focused client or whatever
  else:
    # Execute the activated keybind
    # TODO: refactor this into another file
    let activated = &activatedBinding

    if *activated.exec:
      launchCommand(&activated.exec)
