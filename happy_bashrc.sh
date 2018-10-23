#!/usr/bin/env bash

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"; pwd )"
git --work-tree "$ABS_ROOT_DIR" --git-dir "$ABS_ROOT_DIR/.git" pull origin master
$ABS_ROOT_DIR/scripts/setup_dotfiles.sh
