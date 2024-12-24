import ./view

{.push header: "<LLayerView.h>".}

type
  LayerView* {.importcpp: "Louvre::LLayerView", inheritable.} = object of View



{.pop.}
