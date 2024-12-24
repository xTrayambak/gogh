import ./[view, point, output, colors]

{.pragma: immutable, codegenDecl: "const $1 $2".}

{.push header: "<LSceneView.h>".}
type
  SceneView* {.importcpp: "Louvre::LSceneView", inheritable.} = object

proc createSceneView*(
  sizeB: Size, bufferScale: float32, parent: ptr View = nil
) {.importcpp: "Louvre::LSceneView::LSceneView", constructor.}

proc damageAll*(sview: ptr SceneView, output: ptr Output) {.importcpp: "Louvre::LSceneView::damageAll".}
func clearColor*(sview: ptr SceneView): RGBAF {.importcpp: "Louvre::LSceneView::clearColor".}
proc `clearColor=`*(sview: ptr SceneView, color: RGBAF) {.importcpp: "Louvre::LSceneView::setClearColor".}

{.pop.}
