project(
    'Gogh',
    'c','cpp',
    version: '0.1.0',
    meson_version: '>= 0.56.0',
    default_options: [
        'warning_level=2',
        'cpp_std=c++14',
    ]
)
 
louvre_dep = dependency('Louvre')
wayland_dep = dependency('wayland-client')
wayland_scanner = dependency('wayland-scanner')
 
# List C/C++ source files stored in ./src
sources = run_command('find', './src', '-type', 'f', '-name', '*[.c,.cpp,.cxx,.cc,.h,.hpp,.hh]', check : false).stdout().strip().split('\n')
 
executable(
    'gogh',
    sources : sources,
    dependencies : [
        louvre_dep,
        wayland_dep,
        wayland_scanner
])
