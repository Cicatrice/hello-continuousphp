#!/bin/bash
#


_ts(){
  date '+%Y-%m-%d %H:%M:%S'
}

_log(){
  echo "$(_ts) $@"
}

_log start kickstart script

. /usr/local/src/nvm/nvm.sh
sudo rm -f /usr/local/bin/nodejs /usr/local/bin/node

ls -l $(which node)
ls -l $(which nodejs)

sudo nvm use 8.14

node --version




