#!/bin/bash
#

sudo ln -s /opt/rbenv/bin/rbenv /usr/local/bin/rbenv
ln -s /opt/rbenv /home/cphp/.rbenv
sudo su -c 'cd /home/cphp/.rbenv/plugins/ruby_build && git checkout master && git pull origin master'

export PATH=/home/cphp/.rbenv/shims:${PATH}


rbenv install 2.4.0
rbenv rehash
gem install bundle

ruby -v




