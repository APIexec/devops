:: Download and Install devops scripts
:: SHELL
wget

:: GIT
git clone git://github.com/tom-sapletta-com/devops.git


:: PHP
https://github.com/tom-sapletta-com/devops/archive/master.zip
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
