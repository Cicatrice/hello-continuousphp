#!/bin/bash
#


_ts(){
  date '+%Y-%m-%d %H:%M:%S'
}

_log(){
  echo "$(_ts) $@"
}

_log start kickstart script


ls -l $(which node)
ls -l $(which nodejs)




