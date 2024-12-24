import ./[scene_view, output]

{.push header: "<LScene.h>".}

type
  Scene* {.importcpp: "Louvre::LScene", inheritable.} = object

proc handleInitializeGL*(scene: ptr Scene, output: ptr Output) {.importcpp: "Louvre::LScene::handleInitializeGL".}
proc handlePaintGL*(scene: ptr Scene, output: ptr Output) {.importcpp: "Louvre::LScene::handlePaintGL".}
proc handleMoveGL*(scene: ptr Scene, output: ptr Output) {.importcpp: "Louvre::LScene::handleMoveGL".}
proc handleResizeGL*(scene: ptr Scene, output: ptr Output) {.importcpp: "Louvre::LScene::handleResizeGL".}
proc handleUninitializeGL*(scene: ptr Scene, output: ptr Output) {.importcpp: "Louvre::LScene::handleUninitializeGL".}
proc getMainView*(scene: ptr Scene): ptr SceneView {.importcpp: "Louvre::LScene::mainView".}
proc `autoRepaint=`*(scene: ptr Scene, flag: bool) {.importcpp: "Louvre::LScene::enableAutoRepaint".}

{.pop.}
