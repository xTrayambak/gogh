import louvre

type
  GoghSurface* = object of Surface

proc getView*(surface: ptr Surface): ptr View =
  surface.getViews()[0]
