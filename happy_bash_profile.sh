#!/usr/bin/env bash

# This file should be . sourced by ~/.bash_profile
# This file should not be modified as it is updating other files: it should not pull the rug from under its own feet

# https://stackoverflow.com/questions/28533250/keep-being-prompted-to-enter-passphrase-for-ssh-id-rsa
if [ -f /usr/bin/cygwin1.dll ]; then
    ## only ask for my SSH key passphrase once!
    #use existing ssh-agent if possible
    if [ -f ${HOME}/.ssh-agent ]; then
       . ${HOME}/.ssh-agent > /dev/null
    fi
    if [ -z "$SSH_AGENT_PID" -o -z "`/usr/bin/ps -a|/usr/bin/egrep \"^[ ]+$SSH_AGENT_PID\"`" ]; then
       /usr/bin/ssh-agent > ${HOME}/.ssh-agent
       . ${HOME}/.ssh-agent > /dev/null
    fi
    ssh-add ~/.ssh/id_rsa
fi
