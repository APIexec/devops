## How to install Composer

### Install composer 

##### via PHP
The basic Way, based on method from project website

    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"

##### via DEVOPS Tool

    devops.bat composer install
    
### Remove composer     

##### via PHP

    php -r "unlink('composer.phar');"
    
##### via DEVOPS Tool
    
    devops.bat composer remove
    
TODO: another examples    

### Install laravel framework on Windows


    install/laravel.sh
    
### Install Laravel framework on Linux

    
    install/composer.bat
    install/laravel.bat
    install/version.bat
    
    

    
    devops.bat composer upgrade
    devops.bat composer remove

### Install with specified version

    devops.bat php 5 install
    devops.bat php 7.1 upgrade
    devops.bat php 5 remove


## API
Accesss to external API via command line

#### Ask question based on environment in searching engine
    
    devops.bat google how to install modules php
    
#### devops on remote VPS
    
    devops.bat myVPS devops maintenance install
    devops.bat myVPS devops maintenance status 

#### Check your tickets
as default show opened tickets on gitlab

    devops.bat gitlab show tickets
    
or

    devops.bat gitlab show closed tickets
    
or
    
    devops.bat gitlab show my tickets

or
    
    devops.bat gitlab show tomasz tickets        
     
    

## Install New Composer Module

https://github.com/adamgoose/gitlab#installation

### Installation
Add adamgoose/gitlab to your composer.json file.
    
    "require": {
        "laravel/framework": "4.1.*",
        ...
        "adamgoose/gitlab": "dev-master"
    },

Next, register the GitlabServiceProvider in app/config/app.php's providers array:
    
    'providers' => array(
      ...
      'Adamgoose\Gitlab\GitlabServiceProvider',
    ),

Composer

    .\start\composer.bat
    
Artisan
    
    php artisan config:publish adamgoose/gitlab

#### Config
Finally, you'll need to configure the API Wrapper to access your instance. 
Just run the following command, then update the file found at 
app/config/packages/adamgoose/gitlab/config.php