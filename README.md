# gogh
Gogh is a Wayland compositor written in [Nim](https://nim-lang.org) using the [Louvre](https://github.com/CuarzoSoftware/Louvre) library. It aims to be a close replacement for Hyprland.

# Why?
I wanted to contribute to Hyprland but I don't really understand how the codebase works (I have no clue if it's actually awful, like some folks have told me or it's just skill issue on my part), so I decided to write a Wayland compositor in a language I'm very confident with, that being Nim.

Gogh will try to:
- Have a readable and intelligible codebase, as much as humanly possible
- Be reasonably efficient
- Use POSIX APIs, not the shell
- Not require a C++ compiler as an optional runtime dependency

# Roadmap
Keep in mind that things might be slow to progress because I'm working on my [Louvre bindings](https://github.com/xTrayambak/nim-louvre) simultaneously as this compositor's being worked on.
- Get stuff rendering [X]
- Tiling layout [ ]
- Shaders for fancy effects like blurring [ ]
- Animations and transitions [ ]
- Touch gestures [ ]
