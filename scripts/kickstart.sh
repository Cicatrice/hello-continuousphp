#!/bin/bash
#


_ts(){
  date '+%Y-%m-%d %H:%M:%S'
}

_log(){
  echo "$(_ts) $@"
}

_log start kickstart script


sudo ln -s /opt/rbenv/bin/rbenv /usr/local/bin/rbenv
ln -s /opt/rbenv /home/cphp/.rbenv

_log start checkout rbenv
sudo su -c 'cd /home/cphp/.rbenv/plugins/ruby_build && git checkout master && git pull origin master'

export PATH=/home/cphp/.rbenv/shims:${PATH}

_log start rbenv install
rbenv install 2.4.0
_log start rbenv global  
sudo rbenv global 2.4.0


_log start rbenv rehash
rbenv rehash

_log install bundler
gem install bundler

_log finish
ruby -v




