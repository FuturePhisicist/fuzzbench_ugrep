# How I Fuzzed `ugrep`

In case you would like to study the fuzzbench's README, procede here: [README_fuzzbench.md](README_fuzzbench.md)

## Installation Problems

See issue: [https://github.com/google/fuzzbench/issues/940](https://github.com/google/fuzzbench/issues/940)  
Maybe installing an older version of Python fixed it:  
[https://askubuntu.com/a/682875](https://askubuntu.com/a/682875)

## To Get the Commit Time and Hash

```bash
git --no-pager log -1 $COMMIT_HASH --format=%cd --date=iso-strict
git log
```

## How to Check

```bash
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
