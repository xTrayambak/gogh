# Package

version = "0.1.1"
author = "xTrayambak"
description = "A neat Wayland compositor written in Nim"
license = "GPL-3.0-or-later"
srcDir = "src"
bin = @["gogh"]
backend = "cpp"

# Dependencies

requires "nim >= 2.0.0"
requires "cppstl >= 0.7.0"
requires "colored_logger >= 0.1.0"
requires "pretty >= 0.2.0"
requires "vmath >= 2.0.0"
requires "yaml >= 2.1.1"
requires "opengl >= 1.2.9"
requires "louvre#master" #2.16.3.1"
requires "libbacktrace >= 0.0.8"

task genXkbcommon, "Generate Nim code for libxkbcommon keysyms":
  exec "c2nim src/libxkbcommon/keysyms.c -o:src/libxkbcommon/keysyms.nim"
  exec "c2nim src/libxkbcommon/evdev_scancodes.c -o:src/libxkbcommon/evdev_scancodes.nim"
