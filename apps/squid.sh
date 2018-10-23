#!/bin/bash

APTGET="$(which apt-get 2>/dev/null)"
YUM="$(which yum 2>/dev/null)"

if [ -e "$APTGET" ]; then
  apt-get install -y squid
elif [ -e "$YUM" ]; then
  yum install -y squid
fi
