#!/bin/bash

# Install Lib Sodium PHP
if echo $LINUX_VERSION | grep -q "Amazon Linux release 2"
then

sudo amazon-linux-extras install epel

fi

pecl install -f libsodium

sudo yum install libsodium libsodium-devel -y 

sudo pecl install libsodium

sudo yum --enablerepo="power*" --enablerepo="epel"  install php-sodium

# echo "extension=sodium.so" >> /etc/php.ini

sudo service php-fpm restart

php -i | grep sodium
