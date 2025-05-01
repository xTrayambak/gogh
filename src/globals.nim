import std/[locks, atomics]
import pkg/louvre
import ./[config]

var scene*: ptr Scene

var confGuard: Lock
initLock(confGuard)
var conf {.guard: confGuard.}: Config

var focusedSurface*: Atomic[ptr Surface]

proc setConfig*(config: Config) =
  withLock confGuard:
    conf = config

proc getConfig*(): Config =
  withLock confGuard:
    return conf
