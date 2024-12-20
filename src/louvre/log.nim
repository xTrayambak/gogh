import std/[os, strutils, logging]
import pkg/colored_logger

{.push header: "<LLog.h>".}

type
  Log* {.importcpp: "Louvre::LLog".} = object
  LouvreLogger = ref object of ConsoleLogger

proc init(log: ptr Log) {.importcpp: "Louvre::LLog::init".}
proc log(log: ptr Log, format: cstring) {.importcpp: "Louvre::LLog::log".}
proc fatal(log: ptr Log, format: cstring) {.importcpp: "Louvre::LLog::fatal".}
proc error(log: ptr Log, format: cstring) {.importcpp: "Louvre::LLog::error".}
proc warning(log: ptr Log, format: cstring) {.importcpp: "Louvre::LLog::warning".}
proc debug(log: ptr Log, format: cstring) {.importcpp: "Louvre::LLog::debug".}

{.pop.}

var logger: Log

# Convenience wrapping
proc initLouvreLogger*(threshold: Level = lvlAll) {.inline.} =
  logger.addr.init()

  # Attach handler to std/logging methods
  #[addHandler(
    LouvreLogger(
      levelThreshold: threshold
    )
  )]#
  addHandler(newColoredLogger())

  putEnv(
    "LOUVRE_DEBUG",
    $(case threshold
    of lvlAll, lvlDebug, lvlNotice, lvlNone: 4
    of lvlWarn: 3
    of lvlError: 2
    of lvlFatal: 1
    of lvlInfo: 0
    )
  )

proc logImpl(message: string) {.inline.} =
  logger.addr.log(message.cstring)

proc fatalImpl(message: string) {.inline.} =
  logger.addr.fatal(message.cstring)

proc errorImpl(message: string) {.inline.} =
  logger.addr.error(message.cstring)

proc warningImpl(message: string) {.inline.} =
  logger.addr.warning(message.cstring)

proc debugImpl(message: string) {.inline.} =
  logger.addr.debug(message.cstring)

method log*(logger: LouvreLogger, level: Level, args: varargs[string, `$`]) =
  var str: string
  for arg in args:
    str &= arg & ' '
  case level
  of lvlInfo: logImpl(str)
  of lvlWarn: warningImpl(str)
  of lvlDebug: debugImpl(str)
  of lvlFatal: fatalImpl(str)
  of lvlAll, lvlNotice: logImpl(str)
  of lvlError: errorImpl(str)
  of lvlNone: assert(false)
