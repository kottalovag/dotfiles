#!/usr/bin/env bash

# This file is called from ../happy_bashrc.sh
# This file should not be modified as it is updating other files: it should not pull the rug from under its own feet

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"; pwd )"
git --work-tree "$ABS_ROOT_DIR" --git-dir "$ABS_ROOT_DIR/.git" pull origin master
