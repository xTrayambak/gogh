import std/[os, logging]
import pkg/yaml
import ./keybind

type
  StartupConfig* = object
    exec*: seq[string] =
      @[]
        ## A bunch of commands to be executed upon startup and are relaunched every time the compositor restarts
        # execOnce*: seq[string] ## A bunch of commands that are only to be started up once per launch

  MonitorConfig* = object
    refresh_rate*: uint16 = 60'u16 ## The target refresh rate in Hz
    force_vsync*: bool = false ## Should VSync be forced on for this monitor?

  LayoutConfig* = object
    border_gaps*: float = 8.0f

  Config* = object
    startup*: StartupConfig = StartupConfig(exec: @[])
    displays*: seq[MonitorConfig] = @[]
    binds: seq[KeybindRaw] = @[]
    layout*: LayoutConfig = LayoutConfig(borderGaps: 8.0f)

func binds*(config: Config): seq[Keybind] =
  for binding in config.binds:
    result &= binding.toKeybind()

proc getGoghConfigDir*(): string {.inline.} =
  let dir = getConfigDir() / "gogh"
  let file = dir / "config.yml"

  discard existsOrCreateDir(dir)
  file

proc loadConfig*(): Config =
  let path = getGoghConfigDir()
  if not fileExists(path):
    return default(Config)

  let data = readFile(path)

  data.load(result)
