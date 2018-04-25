#!/usr/bin/env bash

# https://jakelprice.com/article/php-70-to-php-72-how-to-upgrade-your-server

# Add Ondrejs PPA Repo
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

# Remove PHP 7.0.0
sudo apt-get purge php7.0 php7.0-common

# Remove PHP 7.0.0