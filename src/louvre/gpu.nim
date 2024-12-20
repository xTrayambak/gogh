import std/posix
import pkg/cppstl/std_string

{.push header: "<LGPU.h>".}

type
  GPU* {.importcpp: "Louvre::LGPU".} = object

func name(gpu: GPU): CppString {.importcpp: "Louvre::LGPU::name".}
func getDevice*(gpu: GPU): Dev {.importcpp: "Louvre::LGPU::dev".}
func getId*(gpu: GPU): int {.importcpp: "Louvre::LGPU::id".}

{.pop.}

proc getName*(gpu: GPU): string {.inline.} =
  gpu
    .name()
    .toString()
