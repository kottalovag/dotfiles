#!/usr/bin/env bash

# This file is called from ../happy_bashrc.sh
# This file should not be modified as it is updating other files: it should not pull the rug from under its own feet

ABS_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.."; pwd )"
TOUCHED="$ABS_ROOT_DIR/repo_touched"

CURRENT_SECONDS=$(date +%s)
if [ -f $TOUCHED ]; then
    LAST_TOUCH_SECONDS=$(date +%s -r $TOUCHED)
else
    LAST_TOUCH_SECONDS=0
fi

#only pull once a day
if [ "$((CURRENT_SECONDS - LAST_TOUCH_SECONDS))" -gt "$((60*60*24))" ]; then
    git --work-tree "$ABS_ROOT_DIR" --git-dir "$ABS_ROOT_DIR/.git" -c http.lowSpeedLimit=1000 -c http.lowSpeedTime=20 pull origin master
    touch $TOUCHED
else
    echo "Already synced today, won't pull"
fi
