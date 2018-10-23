#!/bin/bash

APTGET="$(which apt-get 2>/dev/null)"
YUM="$(which yum 2>/dev/null)"

if [ -e "$APTGET" ]; then
  apt-get-repository -y ppa:certbot/certbot
  apt-get -y install python-certbot-apache
elif [ -e "$YUM" ]; then
  #TODO
  echo "not implemented"
  exit 10
else
  echo "Cannot install LetsEncrypt certbot"
  exit 255
fi
