# Package

version       = "0.1.0"
author        = "xTrayambak"
description   = "A neat Wayland compositor written in Nim"
license       = "GPL-3.0-or-later"
srcDir        = "src"
bin           = @["gogh"]
backend       = "cpp"

# Dependencies

requires "nim >= 2.0.0"
requires "cppstl >= 0.7.0"
requires "colored_logger >= 0.1.0"
requires "pretty >= 0.2.0"

requires "vmath >= 2.0.0"