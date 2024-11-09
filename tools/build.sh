#!/bin/bash

LIBS="/home/dm/lib/mesa/lib/x86_64-linux-gnu"
HERE="$(realpath $(dirname ${BASH_SOURCE[0]}))"
cd "$HERE/.."
mkdir build
cd build
cmake .. -DDDD_OPENGL_INCLUDE_DIRS="/home/dm/lib/mesa/include /home/dm/lib/gl/include /home/dm/lib/glu/include" -DDDD_OPENGL_SHARED_LIB_DIR="${LIBS}"
cmake --build .
