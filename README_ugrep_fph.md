# How I fuzzed ugrep

## Installation problems

https://github.com/google/fuzzbench/issues/940
Maybe installing older version of Python fixed that:
https://askubuntu.com/a/682875

## To get the commit time and hash

```shell
git --no-pager log -1 $COMMIT_HASH --format=%cd --date=iso-strict
git log
```

## How to check:

```shell
make format
make presubmit

./test_my_ugrep_fuzzer_standart_only.sh
./test_my_ugrep_fuzzer_standart_with_custom.sh
./test_my_ugrep_fuzzer_custom_only.sh
```

## Screenshots

### Standard

![First thing to have been done](screenshots/without_mutator.png)  

### Standard + Custom Mutator

Almost the same as **Custom Mutator Only**

### Custom Mutator Only

![Second thing to have been done](screenshots/custom_mutator_only.png)  
