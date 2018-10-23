#!/usr/bin/env bash

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.."; pwd )"
for FILE in .vimrc
do
  if [ -f "~/$FILE" ]; then
    echo "Skipping $FILE as it is an existing file"
  elif [ ! -L $FILE ]; then
    echo "LINK: ~/$FILE -> $ABS_ROOT_DIR/$FILE"
    ln -s "$ABS_ROOT_DIR/$FILE" ~/$FILE
  fi
done
