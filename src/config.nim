import std/[os, logging]
import pkg/yaml

type
  StartupConfig* = object
    exec*: seq[string] ## A bunch of commands to be executed upon startup and are relaunched every time the compositor restarts
    # execOnce*: seq[string] ## A bunch of commands that are only to be started up once per launch
  
  MonitorConfig* = object
    refresh_rate*: uint16 ## The target refresh rate in Hz
    force_vsync*: bool = false ## Should VSync be forced on for this monitor?

  Config* = object
    startup*: StartupConfig
    displays*: seq[MonitorConfig]

proc getGoghConfigDir*: string {.inline.} =
  let dir = getConfigDir() / "gogh"
  let file = dir / "config.yml"

  discard existsOrCreateDir(dir)
  file

proc loadConfig*: Config =
  let path = getGoghConfigDir()
  if not fileExists(path):
    return default(Config)

  let data = readFile(path)

  data.load(result)
