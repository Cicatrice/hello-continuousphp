#!/bin/bash
#


_ts(){
  date '+%Y-%m-%d %H:%M:%S'
}

_log(){
  echo "$(_ts) $@"
}

_log start kickstart script


rm -f /usr/local/bin/nodejs /usr/local/bin/node

ls -l $(which node)
ls -l $(which nodejs)




