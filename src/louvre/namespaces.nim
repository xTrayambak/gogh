{.push header: "<LNamespaces.h>".}

type
  Version* {.importcpp: "Louvre::LVersion".} = object
    major*, minor*, patch*, build*: uint32

{.pop.}

func `$`*(version: Version): string =
  $version.major & '.' & $version.minor & '.' & $version.patch & '-' & $version.build
