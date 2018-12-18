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
sudo bash -c '. /usr/local/src/nvm/nvm.sh;nvm install 8.14'
nvm use 8.14

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo 'deb https://dl.yarnpkg.com/debian/ stable main' | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get -y  install apt-transport-https yarn

yarn --version

node --version




