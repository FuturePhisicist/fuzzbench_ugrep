#!/bin/bash

set -eux

EXPERIMENT_NAME="fphugrepexperiment1"

CONFIG_FILE="fph_experiment_config.yaml"

# For shellcheck:
# shellcheck source=/dev/null
source .venv/bin/activate

PYTHONPATH=. python3 experiment/run_experiment.py \
  --experiment-config "${CONFIG_FILE}" \
  --benchmarks ugrep_fph \
  --fuzzers aflplusplus aflplusplus_ugrep_fph_custom_only aflplusplus_ugrep_fph_standard aflplusplus_ugrep_fph_standard_with_custom \
  --no-dictionaries \
  --experiment-name "${EXPERIMENT_NAME}"

deactivate
