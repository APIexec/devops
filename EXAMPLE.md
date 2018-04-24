## Composer
### Install
devops.bat composer install
devops.bat composer update
devops.bat composer uninstall



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