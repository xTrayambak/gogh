import ./[output, point]
import pkg/cppstl/std_string

{.push header: "<LToplevelRole.h>".}

type
  ToplevelState* {.importcpp: "Louvre::LToplevelRole::State", pure.} = enum
    NoState = 0
    Maximized = 1
    Fullscreen = 2
    Resizing = 4
    Activated = 8
    TiledLeft = 16
    TiledRight = 32
    TiledTop = 64
    TiledBottom = 128
    Suspended = 256

  ToplevelDecorationMode* {.importcpp: "Louvre::LToplevelRole::DecorationMode", pure.} = enum
    NoPreferredMode = 0
    ClientSide = 1
    ServerSide = 2

  Toplevel* {.importcpp: "Louvre::LToplevelRole", inheritable.} = object

proc configureSize*(toplevel: ptr Toplevel, size: Size) {.importcpp: "Louvre::LToplevelRole::configureSize".}
  ## Configure the toplevel's size. If either width or height are zero, the client is free to pick its own size.
  ## Keep in mind that the client can choose to not respect this, and also that it is asynchronous so it isn't necessary that the client
  ## will resize immediately.
proc configureSize*(toplevel: ptr Toplevel, x, y: uint32) {.importcpp: "Louvre::LToplevelRole::configureSize".}

proc configureBounds*(toplevel: ptr Toplevel, bounds: Size) {.importcpp: "Louvre::LToplevelRole::configureBounds".}
func isMaximized*(toplevel: ptr Toplevel): bool {.importcpp: "Louvre::LToplevelRole::maximized".}
func isFullscreen*(toplevel: ptr Toplevel): bool {.importcpp: "Louvre::LToplevelRole::fullscreen".}
func getDecorationMode*(toplevel: ptr Toplevel): ToplevelDecorationMode {.importcpp: "Louvre::LToplevelRole::decorationMode".}
func supportsSSD*(toplevel: ptr Toplevel): bool {.importcpp: "Louvre::LToplevelRole::supportServerSideDecorations".}
  ## This function returns `true` if this toplevel supports
  ## server-side decorations. If not, it returns `false`.
proc setExclusiveOutput*(toplevel: ptr Toplevel, output: ptr Output) {.importcpp: "Louvre::LToplevelRole::setExclusiveOutput".}
  ## Prevent this toplevel from being painted on other outputs.
func getExclusiveOutput*(toplevel: ptr Toplevel): ptr Output {.importcpp: "Louvre::LToplevelRole::exclusiveOutput".}
  ## Returns the currently set exclusive output, or `nil` if none is set.
func appId(toplevel: ptr Toplevel): CppString {.importcpp: "Louvre::LToplevelRole::appId".}
proc close*(toplevel: ptr Toplevel) {.importcpp: "Louvre::LToplevelRole::close".}

{.pop.}

func getAppId*(toplevel: ptr Toplevel): string {.inline.} =
  ## Get the app ID this toplevel wants to advertise as,
  ## eg. org.gnome.Nautilus (GNOME Files)
  ## 
  ## Note: This isn't a sure-shot way of knowing what app this toplevel belongs to
  ## as there is nothing preventing apps from spoofing it.
  appId(toplevel)
    .toString()
