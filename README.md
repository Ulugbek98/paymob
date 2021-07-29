# Wordpress by OQILA

OQILA company provides a little customized Wordpress for professional development.

### Features:

1. `WP_DEBUG` is managered by whether DEBUG file created or not in document root folder,
1. Missing `.htaccess` and `.gitignore` files are provided,
1. Local environment related configurations are moved to seperate file (`wp-config-local.php`) and ignored by Git,
1. Domain names are stored at `wp-config-local.php`. No need to change it via database each time you move the project to other domain.
1. Default theme is WP Bootstrap Starter, which is empty and great start point for development of custom themes,
1. Built-in WP image comression is disabled by making jpeg_quality 100 in `functions.php`. It puts all responsibilities about image quality on developer. Thus you have full control on images.
1. It comes with pre-installed best plugins:
    * [ACF](https://wordpress.org/plugins/advanced-custom-fields/) - Extremely flexible custom fields,
    * [Classic Editor](https://wordpress.org/plugins/classic-editor/) - Work like editor for humankind,
    * Akismet Anti-Spam - Default spam detector (disabled by default, enable it in production mode),

**Note**: All terminal examples are shown in Linux. If you are using Windows then do it in its way. `{}` means that is example and must be replaced with real value.

## Update:

When you update, keep following files unchanged, since they contain OQILA WP modifications
1. index.php
1. wp-config.php

## Installation:

1. Download and unzip [this repo](https://github.com/oqila/wordpress/archive/master.zip) into the folder where you want to install your new project. Alternatively you can clone:
        
        git clone https://github.com/oqila/wordpress.git

1. Change `wordpress` folder name to your new project name, e.g. `magnitbuilding.uz`
        
        mv wordpress magnitbuilding.uz

1. Create empty database for project via phpMyAdmin with `utf8mb4_general_ci` collation,
1. Import `{project-folder}/install/db.sql` backup sql file into the newly created database,
1. [Linux only] Set proper file permissions with prepared script
        
        ./{project-folder}/install/secure_site_dir {project-folder}/

1. Now to go project folder and duplicate `wp-config-local.php.dist` with name `wp-config-local.php`
        
        cd {project-folder}/
        cp wp-config-local.php.dist wp-config-local.php

1. Edit database and site url parameters,
1. If you are working locally or developing, that is, not in production mode, then it is highly recommended to create empty file with name `DEBUG` at `{project-folder}`. This enables wordpress debug mode which displays errors,
1. Your project should have its own remote git repo, so set it
        
        git remote set-url origin https://{remote url}.git

## Apache configuration on Linux

1. Create file `/etc/apache2/sites-available/{project name}.conf`,
1. Put this on that file
        
        <VirtualHost *:80>
            ServerName {your-domain}.loc
            ServerAlias www.{your-domain}.loc

            ServerAdmin webmaster@localhost
            DocumentRoot /var/www/vhosts/{project folder}

            ErrorLog ${APACHE_LOG_DIR}/error.log
            CustomLog ${APACHE_LOG_DIR}/access.log combined
        </VirtualHost>

Here `DocumentRoot` may be different at your machine.

1. Lets say apache that such conf file exists (do it only once)
        
        sudo a2ensite {project name}

4. Each time we change apache conf file, we need to restart it
        
        sudo service apache2 restart

5. Add following to `/etc/hosts` file
        
        127.0.1.1 {your-domain}.loc


## Working with upstream for getting latest changes

Read more about [upstream](https://www.atlassian.com/git/tutorials/git-forks-and-upstreams)

1. Let's see remote
        
        git remote -v

2. Let's add upstream
        
        git remote add upstream https://github.com/oqila/wordpress.git

3. Let's download latest changes
        
        git fetch upstream

4. Now time to merge changes
        
        git checkout master
        git merge upstream/master

5. If you have merge conflict use
        
        git mergetool
