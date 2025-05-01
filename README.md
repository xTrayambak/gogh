# gogh
Gogh is a Wayland compositor written in [Nim](https://nim-lang.org) using the [Louvre](https://github.com/CuarzoSoftware/Louvre) library. \
It aims to be a close replacement for Hyprland, apart from the layout.

# The Design Philosophy
Gogh uses a master-stack layout. There isn't a very concrete "design philosophy" yet as my workflow keeps changing. :P

# Why?
I wanted to contribute to Hyprland but I don't really understand how the codebase works (I have no clue if it's actually awful, like some folks have told me or it's just skill issue on my part), so I decided to write a Wayland compositor in a language I'm very confident with, that being Nim.

Gogh will try to:
- Have a readable and intelligible codebase, as much as humanly possible
- Be reasonably efficient
- Use POSIX APIs, not the shell
- Not require a C++ compiler as an optional runtime dependency

# Configuration
Gogh is configured with YAML. It can't be configured a lot right now, here's a basic configuration that launches a few things:
```yaml
startup:
  exec:
    - swww init
    - swww img ~/.wallpapers/wallpaper.png
    - waybar
    - foot
```

## Setting up keybinds
Keybinds can currently on be set up to execute commands.
Dispatch commands will be implemented soon.
```yaml
binds:
    - keys: "Super + T"
      exec: foot

    - keys: "Super - Alt + T" # Use `-` to guide the parser into parsing the next item as the modifier
      exec: notify-send "Hi there"
```

# Roadmap
- Get stuff rendering [X]
- Keybinds [X]
- Shaders for fancy effects like blurring [ ]
- Animations and transitions [ ]
- Touch gestures [ ]
