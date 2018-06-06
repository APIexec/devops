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


# Check status of system

    cat /etc/hosts
    php --version
    docker exec -i teamservice_front_1 apache2 --version
    composer --version
    php artisan env

# Environment

    apt update
    apt-get install software-properties-common python-software-properties
    add-apt-repository ppa:git-core/ppa


## apt-transport-https

    apt-get install apt-transport-https

## Install git

    apt install git

## Distribution Upgrade

    apt-get update
    apt-get dist-upgrade

## Apache 2

    /etc/apache2/sites-available/
    apache2 --version

change config

    nano /etc/apache2/apache2.conf

add on the end

    ServerName localhost

restart

    service apache2 reload
    service apache2 restart


    ls /etc/apache2/sites-enabled/
    nano /etc/apache2/sites-enabled/bubinet.conf

    apachectl restart
    service apache2 reload

    cat /etc/hosts
    nano /etc/hosts

## Install PHP 7
    add-apt-repository ppa:ondrej/php
    apt-get update
    apt-get install php7.0 php5.6 php5.6-mysql php-gettext php5.6-mbstring php-xdebug libapache2-mod-php5.6 libapache2-mod-php7.0 php5.6-curl php5.6-gd php5.6-mcrypt php5.6-xml php5.6-xmlrpc
    apt show php -a
    apt install php7.1

## PHP 5.6 => 7.0

    a2dismod proxy_fcgi proxy
    sudo service apache2 restart
    a2dismod php5
    a2enmod php7.0
    service apache2 restart

    update-alternatives --set php /usr/bin/php7.0

    ln -sfn /usr/bin/php7.0 /etc/alternatives/php

## 7.2
    wget -q -O- https://packages.sury.org/php/apt.gpg | apt-key add -
    echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list
    apt-get update

    apt install php7.2 php7.2-cli php7.2-common php7.2-curl php7.2-gd php7.2-json php7.2-mbstring \
    php7.2-mysql php7.2-opcache php7.2-readline php7.2-xml libapache2-mod-php7.2

## debian jessie apache2 php7.2
https://ayesh.me/Ubuntu-PHP-7.2

    sudo apt install apt-transport-https lsb-release ca-certificates
    sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
    sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
    sudo apt update


    sudo apt install php7.2 php7.2-common php7.2-cli php7.2-fpm

### php-fpm
    a2enconf php7.2
    a2disconf php7.1-fpm

### mod_php
You can disable the current PHP integration with

    a2dismod php5

(or your current version) and enable new PHP 7.2 module with

    a2enmod php7.2

## Check PHP
    ls /usr/bin/


### PHP Modules

    apt-get install php-mbstring

## To enable PHP 7.2 FPM in Apache2 do:
    a2enmod proxy_fcgi setenvif
    a2enconf php7.2-fpm


### Remove old versions
If everything is working well (check your phpinfo() and php --info), you can remove the old packages:

    sudo apt purge php7.1*







## https://tecadmin.net/switch-between-multiple-php-version-on-ubuntu/
sudo a2dismod php7.2
sudo a2enmod php5.6
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php5.6
sudo update-alternatives --set phar /usr/bin/phar5.6
sudo update-alternatives --set phar.phar /usr/bin/phar.phar5.6
sudo update-alternatives --set phpize /usr/bin/phpize5.6
sudo update-alternatives --set php-config /usr/bin/php-config5.6
