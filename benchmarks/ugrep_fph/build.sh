#!/bin/bash

# Exit on error
set -eux

cd $SRC/ugrep

# TODO: Remove previously compiled binaries

autoreconf -fi
# CC=afl-clang-fast CXX=afl-clang-fast++ ./build.sh --disable-shared
./build.sh --disable-shared --disable-avx2

# $CC $CFLAGS -c $SRC/target.cc -o target.o
# $CXX $CXXFLAGS target.o -o $OUT/ugrep $LIB_FUZZING_ENGINE
# cd $OUT # ?

############# cp ./bin/ugrep $OUT/ugrep
