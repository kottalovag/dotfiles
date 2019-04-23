#!/usr/bin/env bash

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.."; pwd )"
$ABS_ROOT_DIR/scripts/setup_bash_profile.sh
$ABS_ROOT_DIR/scripts/setup_bashrc.sh
$ABS_ROOT_DIR/scripts/setup_dotfiles.sh
$ABS_ROOT_DIR/scripts/setup_vim_plugins.sh
source $ABS_ROOT_DIR/scripts/setup_aliases.sh

echo "happy setup done, see details at $(git --work-tree "$ABS_ROOT_DIR" --git-dir "$ABS_ROOT_DIR/.git" remote get-url origin)"
