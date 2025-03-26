#!/bin/bash

# Exit on error
set -eux

cd $SRC/ugrep

# TODO: Remove previously compiled binaries

# CC=afl-clang-fast CXX=afl-clang-fast++ ./build.sh --disable-shared
./build.sh --disable-shared

cp ./ugrep /out/ugrep
