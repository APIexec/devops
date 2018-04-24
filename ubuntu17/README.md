# DevOps Project Tool

## Idea

My idea is to share for You the easies way to start your new environment in programming World.
Let's start your new project and enjoy!
The library give you scripts to execute step on your new PC with Windows or Linux the basic environment with examples
Now, you can easy improve your skills at work day by day as a DevOps!
 

## Install PHP Environment


### Install composer

    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"


### Install laravel framework on Windows


    install/laravel.sh
    
### Install Laravel framework on Linux

    
    install/composer.bat
    install/laravel.bat
    install/version.bat
    
    
### Laravel documentation

https://laravel.com/docs/4.2


## Start Application

How to start Example project application
[Example](EXAMPLE.md)

### Open in Browser

    .\start\localhost.bat
    .\start\browser.bat
        
    
### Testing    
    
    .\start\phpunit.bat
