#!/usr/bin/env bash

# This file should be . sourced by ~/.bashrc
# This file should not be modified as it is updating other files: it should not pull the rug from under its own feet

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"; pwd )"
$ABS_ROOT_DIR/scripts/pull.sh
. $ABS_ROOT_DIR/scripts/ensure_setup.sh
