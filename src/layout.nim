import std/[logging]
import louvre

type
  Layout* = object
    surfaces: seq[ptr Surface] # internal "register" of surfaces
    sizes: seq[Point]
    output*: ptr Output # TODO: multi workspace support

func add*(layout: var Layout, surf: ptr Surface): int {.inline.} =
  layout.surfaces &= surf
  layout.surfaces.len - 1

proc compute*(layout: var Layout) =
  assert(layout.output != nil, "Output has been destroyed in the midst of layout computation (or it was never provided).")
  debug "layout: computing layout for " & $layout.surfaces.len & " surface(s)"
  let outputSize = layout.output[].getSize()
  debug "layout: output size: " & $outputSize
  
  # TODO: multi-workspace and multi-output support
  for surf in layout.surfaces:
    
