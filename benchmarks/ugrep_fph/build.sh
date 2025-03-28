#!/bin/bash

# Exit on error
set -eux

cd $SRC/ugrep

# TODO: Remove previously compiled binaries

autoreconf -fi
# CC=afl-clang-fast CXX=afl-clang-fast++ ./build.sh --disable-shared
./build.sh --disable-shared --disable-avx2

cp ./bin/ugrep $OUT/ugrep
