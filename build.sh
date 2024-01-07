#!/usr/bin/env bash

meson setup build --wipe
cd build
meson compile
cd ..
