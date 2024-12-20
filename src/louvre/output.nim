import ./[point, gpu]

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

  Output* {.importcpp: "Louvre::LOutput".} = object

func id*(output: Output): uint32 {.importcpp: "Louvre::LOutput::id".}
func getState*(output: Output): OutputState {.importcpp: "Louvre::LOutput::state".}
func getGpu*(output: Output): GPU {.importcpp: "Louvre::LOutput::gpu".}
func getSize*(output: Output): Size {.importcpp: "Louvre::LOutput::size".}

{.pop.}
