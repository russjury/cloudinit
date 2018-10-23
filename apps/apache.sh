#!/bin/bash

APTGET="$(which apt-get 2>/dev/null)"
YUM="$(which yum 2>/dev/null)"

if [ -e "$APTGET" ]; then
  apt-get install -y apache2
  a2dismod -f status
  a2enmod -f headers proxy proxy_http ssl dir
  a2disconf localized-error-pages other-vhosts-access-log serve-cgi-bin charset
  a2ensite default-ssl
elif [ -e "$YUM" ]; then
  yum install -y httpd
fi
