with import <nixpkgs> { };

mkShell {
  nativeBuildInputs = [
    pkg-config
    louvre
    wayland
    pixman
    libGL
    libxkbcommon
    c2nim
    libdrm
  ];

  LD_LIBRARY_PATH = lib.makeLibraryPath [
    louvre
    wayland
    pixman
    libGL
    libdrm
    libxkbcommon
  ];
}
