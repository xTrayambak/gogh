{.push importcpp: "<LView.h>".}

type
  ViewType* {.importcpp: "Louvre::LView::Type", pure.} = enum
    UndefinedType
    LayerType
    TextureType
    SolidColorType
    SceneType

  View* {.importcpp: "Louvre::LView", inheritable.} = object

proc `=copy`*(dest: var View, src: View) {.error: "View type forbids copying".}
proc damageAll*(view: ptr View) {.importcpp: "Louvre::LView::damageAll".}
proc `visible=`*(view: ptr View, visible: bool) {.importcpp: "Louvre::LView::setVisible".}
func visible*(view: View): bool {.importcpp: "Louvre::LView::visible".}
proc `opacity=`*(view: ptr View, opacity: float32) {.importcpp: "Louvre::LView::setOpacity".}
func opacity*(view: View): float32 {.importcpp: "Louvre::LView::opacity".}

{.pop.}
