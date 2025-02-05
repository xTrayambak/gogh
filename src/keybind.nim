import std/[strutils, options]
import libxkbcommon/evdev_scancodes
import pkg/pretty
import ./sugar

type
  InvalidKeybind* = object of ValueError
  KeybindParseState = enum
    kpsParseMain
    kpsParseMod
    kpsParseKey

  KeybindRaw* = object
    keys*: string
    exec*: Option[string]

  Keybind* = object
    ## e.g for Super - Shift + T
    keyMain: string ## Super
    keyMod: Option[string] ## Shift
    key: Option[char] ## T

    exec*: Option[string]

func strToKey(str: string): uint32 {.raises: [InvalidKeybind].} =
  case str.toLowerAscii()
  of "a":
    return KEY_A
  of "b":
    return KEY_B
  of "c":
    return KEY_C
  of "d":
    return KEY_D
  of "e":
    return KEY_E
  of "f":
    return KEY_F
  of "g":
    return KEY_G
  of "h":
    return KEY_H
  of "i":
    return KEY_I
  of "j":
    return KEY_J
  of "k":
    return KEY_K
  of "l":
    return KEY_L
  of "m":
    return KEY_M
  of "n":
    return KEY_N
  of "o":
    return KEY_O
  of "p":
    return KEY_P
  of "q":
    return KEY_Q
  of "r":
    return KEY_R
  of "s":
    return KEY_S
  of "t":
    return KEY_T
  of "u":
    return KEY_U
  of "v":
    return KEY_V
  of "w":
    return KEY_W
  of "x":
    return KEY_X
  of "y":
    return KEY_Y
  of "z":
    return KEY_Z
  of "super":
    return KEY_SUPER_L
  of "alt":
    return KEY_ALT_L
  of "printscreen", "print", "prtscr":
    return KEY_PRINT
  else:
    return KEY_ALT_L

func mainKey*(keybind: Keybind): uint32 {.inline.} =
  keybind.keyMain.strToKey()

func modKey*(keybind: Keybind): Option[uint32] {.inline.} =
  if *keybind.keyMod:
    return strToKey(&keybind.keyMod).some()

func key*(keybind: Keybind): Option[uint32] {.inline.} =
  if *keybind.key:
    return strToKey($(&keybind.key)).some()

proc parseKeybind*(keys: string): Keybind =
  var kb: Keybind
  var kmod: string
  var state = kpsParseMain
  
  for c in keys:
    if c in strutils.Whitespace:
      continue

    if c == '+':
      state = kpsParseKey
      continue
    elif c == '-':
      state = kpsParseMod
      continue

    case state
    of kpsParseMain:
      kb.keyMain &= c
    of kpsParseMod:
      kmod &= c
    of kpsParseKey:
      kb.key = some(c)
      break
  
  if kmod.len > 0:
    kb.keyMod = some(move(kmod))

  kb

proc toKeybind*(raw: KeybindRaw): Keybind =
  var kb = raw.keys.parseKeybind()
  kb.exec = raw.exec

  move kb
