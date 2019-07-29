#!/usr/bin/env bash

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.."; pwd )"
mkdir -p ~/.vim/plugin
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle


for FILE in plugin/Rename.vim autoload/pathogen.vim
do
    target_plugin=~/.vim/$FILE
    if [ ! -f $target_plugin ] && [ ! -L $target_plugin ] ; then
        echo "LINK: $target_plugin -> $ABS_ROOT_DIR/.vim/$FILE"
        ln -s "$ABS_ROOT_DIR/.vim/$FILE" $target_plugin
    fi
done

repos=(
    "bundle/vim-ps1,https://github.com/PProvost/vim-ps1.git"
)
for repo in ${repos[@]}; do
    # TODO fix this for cygwin
    IFS=',' read SUBPATH GITURL <<< "${bundle}"
    echo $SUBPATH
    if [ ! -d ~/.vim/$SUBPATH ] && [ ! -L ~/.vim/$SUBPATH ] ; then
        cd ~/.vim/bundle
        git clone $GITURL
        cd -
    fi
done
