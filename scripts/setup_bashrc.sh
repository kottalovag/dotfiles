#!/usr/bin/env bash

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.."; pwd )"
LINE=". $ABS_ROOT_DIR/happy_bashrc.sh"
grep -qF "$LINE" ~/.bashrc || ( echo "including this in ~/.bashrc:" && echo $LINE && echo "$LINE" >> ~/.bashrc )

