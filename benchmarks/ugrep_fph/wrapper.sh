#!/bin/bash

REAL_UGREP="$OUT/ugrep_to_run"

ARGS=()
for arg in "$@"; do
  case "$arg" in
    -m=erge=* | -dump_coverage=* | -runs=* | -dict=* )
      # skip coverage flags
      ;;
    *)
      ARGS+=("$arg")
      ;;
  esac
done

exec "$REAL_UGREP" "${ARGS[@]}"
