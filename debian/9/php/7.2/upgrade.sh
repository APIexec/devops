#!/usr/bin/env bash

# Laravel PHP module
# https://laracasts.com/discuss/channels/general-discussion/ext-mcrypt-the-requested-php-extension-mcrypt-is-missing?page=0
# https://stackoverflow.com/questions/36402000/php-7-mcrypt-php-extension-required

# CentOS 7/RHEL https://www.cyberciti.biz/faq/how-to-install-php-7-2-on-centos-7-rhel-7/

# UBUNTU
# https://thishosting.rocks/install-php-on-ubuntu/
# https://ayesh.me/Ubuntu-PHP-7.2

# https://jakelprice.com/article/php-70-to-php-72-how-to-upgrade-your-server

# Add Ondrejs PPA Repo
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

# Remove PHP 7.0.0
sudo apt-get purge php7.0 php7.0-common

# Other it with PHP 7.2
sudo apt-get install php7.2-curl php7.2-xml php7.2-zip php7.2-gd php7.2-mysql php7.2-mbstring

# Lets finish by restarting our server!
sudo shutdown -r now



# Upgrade Apache2

    apt update
    apt-get install software-properties-common python-software-properties
    add-apt-repository ppa:git-core/ppa

## Install git

    apt install git

## Install PHP 7
    add-apt-repository ppa:ondrej/php
    apt-get update
    apt-get install php7.0 php5.6 php5.6-mysql php-gettext php5.6-mbstring php-xdebug libapache2-mod-php5.6 libapache2-mod-php7.0 php5.6-curl php5.6-gd php5.6-mcrypt php5.6-xml php5.6-xmlrpc

## PHP 5.6 => 7.0

    a2dismod php5
    a2enmod php7.0
    service apache2 restart
    update-alternatives --set php /usr/bin/php7.0
