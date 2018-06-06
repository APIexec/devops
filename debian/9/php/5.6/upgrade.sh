#!/usr/bin/env bash
## https://tecadmin.net/switch-between-multiple-php-version-on-ubuntu/

sudo a2dismod php5.6
sudo a2enmod php7.2
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php7.2
sudo update-alternatives --set phar /usr/bin/phar7.2
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.2
sudo update-alternatives --set phpize /usr/bin/phpize7.2
sudo update-alternatives --set php-config /usr/bin/php-config7.2