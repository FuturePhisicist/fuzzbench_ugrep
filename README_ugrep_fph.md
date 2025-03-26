# How I fuzzed ugrep

DOCKERFILE?

mkdir unique_regexes input_texts
cp -r ../../../FuzzingTask/unique_regexes unique_regexes
cp -r ../../../FuzzingTask/input_texts input_texts

git --no-pager log -1 $COMMIT_HASH --format=%cd --date=iso-strict
git log

https://github.com/google/fuzzbench/issues/940

```shell
make format
make presubmit

export FUZZER_NAME=aflplusplus_ugrep_fph_custom_only
export BENCHMARK_NAME=ugrep_fph

make build-$FUZZER_NAME-$BENCHMARK_NAME

# This command will fuzz forever. Press Ctrl-C to stop it.
make run-$FUZZER_NAME-$BENCHMARK_NAME
```
