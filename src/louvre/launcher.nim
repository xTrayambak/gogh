import std/posix
import pkg/cppstl/std_string

{.push header: "<LLauncher.h>".}

type
  Launcher* {.importcpp: "Louvre::LLauncher".} = object

proc startDaemon(launcher: Launcher, name: CppString) {.importcpp: "Louvre::LLauncher::startDaemon".}
proc pid(launcher: Launcher): Pid {.importcpp: "Louvre::LLauncher::pid".}
proc launch(launcher: Launcher, command: CppString) {.importcpp: "Louvre::LLauncher::launch".}
proc stopDaemon(launcher: Launcher) {.importcpp: "Louvre::LLauncher::stopDaemon".}

{.pop.}

var launcher: Launcher

# Convenience wrapping
proc startLaunchDaemon*(name: string = "LLauncher") {.inline.} =
  launcher.startDaemon(name.toCppString)

proc launcherDaemonPid*: Pid {.inline.} =
  launcher.pid()

proc launchCommand*(command: string) {.inline.} =
  launcher.launch(command.toCppString)

proc stopLaunchDaemon* =
  launcher.stopDaemon()


