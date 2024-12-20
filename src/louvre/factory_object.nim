{.push header: "<LFactoryObject.h>".}

type
  FactoryObjectType* {.importcpp: "Louvre::LFactoryObject::Type".} = enum
    LSurface
    LToplevelRole
    LForeignToplevelController
    LPopupRole
    LSubsurfaceRole
    LCursorRole
    LDNDIconRole
    LSessionLockRole
    LLayerRole
    LClient
    LOutput
    LSeat
    LPointer
    LKeyboard
    LTouch
    LClipboard
    LDND
    LSessionLockManager
    LActivationTokenManager

  FactoryObject* {.importcpp: "Louvre::LFactoryObject", inheritable.} = object

func getFactoryObjectType*(obj: FactoryObject): FactoryObjectType {.importcpp: "Louvre::LFactoryObject::factoryObjectType".}

{.pop.}
