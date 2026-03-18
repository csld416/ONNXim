#!/usr/bin/env bash
set -e

if [ ! -d build ] || [ -z "$(ls -A build 2>/dev/null)" ]; then
    mkdir -p build
    cd build
    conan install ..
    cmake ..
    make
    cd ..
else
    cd build
    make
    cd ..
fi