import ./[point, gpu, factory_object]

{.pragma: immutable, codegenDecl: "const $1 $2".}

{.push header: "<LOutput.h>".}

type
  OutputState* {.importcpp: "Louvre::LOutput::State", pure.} = enum
    PendingInitialize
    PendingUninitialize
    Initialized
    Uninitialized
    ChangingMode
    Suspended

  SubPixel* {.importcpp: "Louvre::LOutput::SubPixel", pure.} = enum
    Unknown = 0
    None = 1
    HorizontalRGB = 2
    HorizontalBGR = 3
    VerticalRGB = 4
    VerticalBGR = 5

  Output* {.importcpp: "Louvre::LOutput", inheritable.} = object of FactoryObject

proc makeOutput*(params {.immutable.}: pointer): Output {.importcpp: "`Output`(`params`);", constructor.}
func id*(output: Output): uint32 {.importcpp: "Louvre::LOutput::id".}
func state*(output: Output): OutputState {.importcpp: "Louvre::LOutput::state".}
func gpu*(output: Output): GPU {.importcpp: "Louvre::LOutput::gpu".}
func size*(output: Output): Size {.importcpp: "Louvre::LOutput::size".}
func dpi*(output: Output): int32 {.importcpp: "Louvre::LOutput::dpi".}
func isNonDesktop*(output: Output): bool {.importcpp: "Louvre::LOutput::isNonDesktop".}
func preferVSync*(output: Output): bool {.importcpp: "Louvre::LOutput::preferVSync".}
func refreshRateLimit*(output: Output): int32 {.importcpp: "Louvre::LOutput::refreshRateLimit".}
proc `scale=`*(output: ptr Output, scale: float32) {.importcpp: "Louvre::LOutput::setScale".}
proc `leasable=`*(output: ptr Output, leasable: bool) {.importcpp: "Louvre::LOutput::setLeasable".}
proc `position=`*(output: ptr Output, pos: Point) {.importcpp: "Louvre::LOutput::setPos".}
proc setVsyncInternal(output: ptr Output, enabled: bool): bool {.importcpp: "Louvre::LOutput::enableVSync".}
proc `refreshRateLimit=`*(output: ptr Output, hz: int32) {.importcpp: "Louvre::LOutput::setRefreshRateLimit".}
proc repaint*(output: ptr Output) {.importcpp: "Louvre::LOutput::repaint".}
func nameInternal(output: Output): cstring {.importcpp: "Louvre::LOutput::name".}
func manufacturerInternal(output: Output): cstring {.importcpp: "Louvre::LOutput::manufacturer".}
func descriptionInternal(output: Output): cstring {.importcpp: "Louvre::LOutput::description".}

proc constructOutput*[T](typ: typedesc[T], params {.immutable.}: pointer): ptr T {.importcpp: "('1*)(new Louvre::LOutput(@))".}

# Virtual methods
proc initializeGL*(output: ptr Output) {.importcpp: "Louvre::LOutput::initializeGL", member.}
proc paintGL*(output: ptr Output) {.importcpp: "Louvre::LOutput::paintGL", member.}
proc moveGL*(output: ptr Output) {.importcpp: "Louvre::LOutput::moveGL", member.}
proc resizeGL*(output: ptr Output) {.importcpp: "Louvre::LOutput::resizeGL", member.}
proc uninitializeGL*(output: ptr Output) {.importcpp: "Louvre::LOutput::uninitializeGL", member.}

{.pop.}

type
  OutputError* = object of CatchableError
    ## Any catchable error that occurs in the output control functions

  CannotSetVSyncState* = object of OutputError
    ## Likely means that this output doesn't support VSync control.

func name*(output: Output): string {.inline.} =
  $output.nameInternal()

func manufacturer*(output: Output): string {.inline.} =
  $output.manufacturerInternal()

func description*(output: Output): string {.inline.} =
  $output.descriptionInternal()

proc `vsync=`*(output: ptr Output, enabled: bool) {.inline, raises: [CannotSetVSyncState].} =
  if not output.setVSyncInternal(enabled):
    raise newException(CannotSetVSyncState, "Output does not support VSync control!")
