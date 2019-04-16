#!/usr/bin/env bash

if [ -f ~/.bash_profile ]; then
    ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.."; pwd )"
    LINE=". $ABS_ROOT_DIR/happy_bash_profile.sh"
    grep -qF "$LINE" ~/.bash_profile || ( echo "including this in ~/.bash_profile:" && echo $LINE && echo "$LINE" >> ~/.bash_profile )
fi