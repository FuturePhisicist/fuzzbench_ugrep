#!/bin/bash

# Exit on error
set -eux

cd $SRC/ugrep

# TODO: Remove previously compiled binaries

CC=afl-clang-fast CXX=afl-clang-fast++ ./build.sh --disable-shared

cp ./ugrep /out/ugrep

# Copy the text corpus into /out so we can reference it later at runtime
cp -r $SRC/ugrep/text_corpus /out/text_corpus || true
