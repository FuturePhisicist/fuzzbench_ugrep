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

./test_my_ugrep_fuzzer.sh
```
