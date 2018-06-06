#!/usr/bin/env bash
## https://tecadmin.net/switch-between-multiple-php-version-on-ubuntu/
sudo a2dismod php7.2
sudo a2enmod php5.6
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php5.6
sudo update-alternatives --set phar /usr/bin/phar5.6
sudo update-alternatives --set phar.phar /usr/bin/phar.phar5.6
sudo update-alternatives --set phpize /usr/bin/phpize5.6
sudo update-alternatives --set php-config /usr/bin/php-config5.6
