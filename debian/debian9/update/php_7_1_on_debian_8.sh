echo "Upgrade PHP to version 7.2 on Debian"
php --version
apt-get update -y
apt-get upgrade -y
apt-get autoremove -y

sudo apt install apt-transport-https lsb-release ca-certificates -y
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt update -y

sudo apt install php7.1 php7.1-common php7.1-cli php7.1-fpm -y
sudo apt-get install php7.1

sudo apt-get install php7.1-cli php7.1-common php7.1-json php7.1-opcache php7.1-mysql php7.1-mbstring php7.1-mcrypt php7.1-zip php7.1-fpm

a2dismod php7.2

a2enmod php7.1

sudo service apache2 restart

sudo apt install php7.2 php7.2-common php7.2-cli php7.2-fpm -y
sudo apt-get install php7.2-xml
sudo apt-get install mcrypt php7.1-mcrypt
sudo apt-get install php-mbstring
sudo apt-get install phpunit

sudo apt purge php7.0*
sudo apt purge php7.1*

php --version


