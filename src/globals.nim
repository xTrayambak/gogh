import std/[locks]
import louvre
import ./[config]

var scene*: ptr Scene

var confGuard: Lock
initLock(confGuard)
var conf {.guard: confGuard.}: Config

proc setConfig*(config: sink Config) =
  withLock confGuard:
    conf = move(config)

proc getConfig*: Config =
  withLock confGuard:
    return conf
