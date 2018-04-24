echo "Upgrade PHP to version 7.2 on Ubuntu"
php --version
apt-get update -y
apt-get upgrade -y
apt-get autoremove -y

sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2-cli

sudo apt install php7.1 php7.1-common php7.1-cli php7.1-fpm -y

sudo apt install php7.2 php7.2-common php7.2-cli php7.2-fpm -y
sudo apt-get install php7.2-xml
sudo apt-get install mcrypt php7.1-mcrypt
sudo apt-get install php-mbstring
sudo apt-get install phpunit

sudo apt purge php7.0*
sudo apt purge php7.1*

php --version


