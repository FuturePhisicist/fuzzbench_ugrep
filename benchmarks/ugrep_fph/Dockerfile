FROM gcr.io/oss-fuzz-base/base-builder@sha256:87ca1e9e19235e731fac8de8d1892ebe8d55caf18e7aa131346fc582a2034fdd

# `ugrep` will be checked out to the commit hash specified in `benchmark.yaml`.
RUN git clone https://github.com/Genivia/ugrep /src/ugrep
RUN git -C /src/ugrep checkout 8e9e97861f65408a2fb1196a7b112b992e7ca812

# Regexes and text corpuses from FPh's repo
RUN git clone https://github.com/FuturePhisicist/FuzzingTask /src/FuzzingTask
RUN ls /src/FuzzingTask
RUN cp -r /src/FuzzingTask/unique_regexes $OUT/
RUN cp -r /src/FuzzingTask/input_texts $OUT/

# Debatable, whether it should be done by this Dockerfile
# of by the aflplusplus_ugrep_fph_...
RUN cp -r /src/FuzzingTask/mutator $OUT/

WORKDIR $SRC/ugrep
RUN cp -r build.sh $SRC/