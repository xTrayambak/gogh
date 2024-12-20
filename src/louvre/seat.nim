import ./[gpu, output, factory_object, event]
import pkg/cppstl/std_vector

{.push header: "<LSeat.h>".}

{.pragma: immutable, codegenDecl: "const $1 $2".}

type
  Seat* {.importcpp: "Louvre::LSeat", inheritable.} = object of FactoryObject

func gpus(seat: var Seat): CppVector[ptr GPU] {.importcpp: "Louvre::LSeat::gpus".}
func outputs(seat: var Seat): CppVector[ptr Output] {.importcpp: "Louvre::LSeat::outputs".}
func name(seat: var Seat): cstring {.importcpp: "Louvre::LSeat::name".}
proc makeSeat*(params: pointer): Seat {.importcpp: "Louvre::LSeat::LSeat(#)", constructor.}

proc outputPlugged*(seat: ptr Seat, output: ptr Output) {.importcpp: "Louvre::LSeat::outputPlugged", member.}
proc onEvent*(seat: ptr Seat, event {.immutable.}: var Event) {.importcpp: "Louvre::LSeat::onEvent", member.}

{.pop.}

func getGpus*(seat: var Seat): seq[ptr GPU] {.inline.} =
  seat
    .gpus()
    .toSeq()

proc constructSeat*[T](typ: typedesc[T], params: pointer): ptr T {.importcpp: "('1*)(new Louvre::LSeat(@))".}

func getName*(seat: var Seat): string {.inline.} =
  $seat.name()

func getOutputs*(seat: var Seat): seq[ptr Output] {.inline.} =
  seat
    .outputs()
    .toSeq()
