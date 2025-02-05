{.passC: gorge("pkg-config --cflags Louvre").}
{.passL: gorge("pkg-config --libs Louvre").}

{.passC: gorge("pkg-config --cflags wayland-server").}
{.passL: gorge("pkg-config --libs wayland-server").}

{.passC: gorge("pkg-config --cflags pixman-1").}
{.passL: gorge("pkg-config --libs pixman-1").}

{.passC: gorge("pkg-config --cflags libdrm").}
{.passL: gorge("pkg-config --libs libdrm").}

{.passC: "-std=gnu++20".}

when not defined(cpp):
  {.error: "This library only supports the C++ backend!".}

import louvre/[
  compositor, namespaces, launcher, output, gpu, seat, factory_object, utils, event, log, point,
  surface, toplevel, scene, view, scene_view, colors, keyboard, keyboard_key_event, opengl
]

export compositor, namespaces, launcher, output, gpu, seat, factory_object, utils, event, log, surface, point, toplevel, scene, view, scene_view, colors,
       keyboard, keyboard_key_event, opengl
