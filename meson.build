project(
    'Gogh',
    'c','cpp',
    version : '0.1.0',
    meson_version: '>= 0.60.0',
    default_options: [
        'warning_level=2',
        'cpp_std=c++20',
    ]
)
 
louvre_dep = dependency('Louvre', version : '>=2.9.0')
libdrm_dep = dependency('libdrm')
pixman_dep = dependency('pixman-1')
gles_dep = dependency('glesv2')
libinput_dep = dependency('libinput')
sdbus = dependency(['libsystemd', 'libelogind', 'basu'])
 
# List C/C++ source files stored in ./src
sources = run_command('find', './src', '-type', 'f', '-name', '*[.c,.cpp,.h,.hpp]', check : false).stdout().strip().split('\n')
 
executable(
    'gogh',
    sources : sources,
    dependencies : [
        louvre_dep,
        pixman_dep,
        libinput_dep,
        libdrm_dep,
        gles_dep,
        sdbus
    ],
    install : true)
