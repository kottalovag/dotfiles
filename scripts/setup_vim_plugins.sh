#!/usr/bin/env bash

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.."; pwd )"
mkdir -p ~/.vim

for FILE in Rename.vim
do
    target_plugin=~/.vim/$FILE
    if [ ! -f $target_plugin ] && [ ! -L $target_plugin ] ; then
        echo "LINK: $target_plugin -> $ABS_ROOT_DIR/.vim/$FILE"
        ln -s "$ABS_ROOT_DIR/.vim/$FILE" $target_plugin
    fi
done
