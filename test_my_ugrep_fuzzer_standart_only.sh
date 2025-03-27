#!/bin/bash

export FUZZER_NAME=aflplusplus_ugrep_fph_standard
export BENCHMARK_NAME=ugrep_fph

echo "[ TEST_MY_UGREP_FUZZER ] Started build command."
# sudo make build-$FUZZER_NAME-$BENCHMARK_NAME
sudo make build-$FUZZER_NAME-$BENCHMARK_NAME

read -p "[ TEST_MY_UGREP_FUZZER ] Do you want to run the benchmark now? [Y/n] " answer
answer=${answer:-Y}  # Default to "Y" if no input

if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "[ TEST_MY_UGREP_FUZZER ] Started run command."
    sudo make -d --trace run-$FUZZER_NAME-$BENCHMARK_NAME
else
    echo "[ TEST_MY_UGREP_FUZZER ] Skipping run command."
fi
