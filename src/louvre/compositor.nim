import std/[strutils]
import ./[namespaces, output, seat, factory_object, surface, utils]
import pkg/cppstl/[std_vector]

{.push header: "<LCompositor.h>".}
type
  CompositorState* {.importcpp: "Louvre::LCompositor::CompositorState", pure.} = enum
    Uninitialized
    Initializing
    Initialized
    Uninitializing
    Pausing
    Paused
    Resuming

  Compositor* {.importcpp: "Louvre::LCompositor", inheritable.} = object

func getVersion*(compositor: Compositor): Version {.importcpp: "Louvre::LCompositor::version".}
func getState*(compositor: Compositor): CompositorState {.importcpp: "Louvre::LCompositor::state".}
func outputs*(compositor: Compositor): CppVector[ptr Output] {.importcpp: "Louvre::LCompositor::outputs".}
func getSeat*(compositor: Compositor): ptr Seat {.importcpp: "Louvre::LCompositor::seat".}
proc surfaces(compositor: Compositor): List[ptr Surface] {.importcpp: "Louvre::LCompositor::surfaces".}

proc start*(compositor: var Compositor): bool {.importcpp: "Louvre::LCompositor::start".}
proc processLoop*(compositor: var Compositor, msTimeout: int32) {.importcpp: "Louvre::LCompositor::processLoop".}

proc initialized*(compositor: ptr Compositor) {.importcpp: "Louvre::LCompositor::initialized".}
proc createObjectRequest*(
  compositor: ptr Compositor,
  objectType: FactoryObjectType,
  params: pointer
): ptr FactoryObject {.importcpp: "Louvre::LCompositor::createObjectRequest".}

{.pop.}

proc getSurfaces*(compositor: Compositor): seq[ptr Surface] {.inline.} =
  compositor
    .surfaces()
    .toSeq()

func getOutputs*(compositor: Compositor): seq[ptr Output] {.inline.} =
  compositor
    .outputs()
    .toSeq()
