# OQILA WP

Customized Wordpress version made by OQILA Company for professional development.

**WARNING**: THIS SOFTWARE IS INTENDED ONLY FOR INTERNAL USE INSIDE THE COMPANY. DISTRIBUTION IS NOT PERMITTED.

**Note**: Please read `@Dropbox/IB - Umumiy/sayt/dev book.pdf` for datailed information about all changes made to orginal Wordpress. There you can learn how to convert existing Wordpress to OQILA WP.

## Installation:

`{}` means that it is sample data and must be replaced with real value.

1. Cloning requires that you must be added to repo:

        git clone https://bitbucket.org/fazliddin2014/oqila-wp.git

1. Change `wordpress` folder name to your new project name, e.g. `magnitbuilding.uz`
        
        mv wordpress magnitbuilding.uz

1. Create empty database for project via phpMyAdmin with `utf8mb4_general_ci` collation,
1. Import `magnitbuilding.uz/install/db.sql` backup sql file into the newly created database,
1. [Linux only] Set proper file permissions with prepared script
        
        ./magnitbuilding.uz/install/secure_site_dir

1. Now duplicate `wp-config-local.php.dist`, giving file name `wp-config-local.php` for copy:
        
        cp wp-config-local.php.dist wp-config-local.php

1. Edit database and site url parameters in `wp-config-local.php`,
1. If you are working locally or developing, that is, not in production mode, then it is highly recommended to create empty file with name `DEBUG` inside `magnitbuilding.uz`. This enables wordpress debug mode which displays errors,
1. Your project should have its own remote git repo, so set it
        
        git remote set-url origin https://{remote url}.git

Now login to admin panel: http://magnitbuilding.uz/boshqaruv

        root_super
        DJ!OcCJg*

## Updating:

When you update Wordpress, it overwrites `index.php` file. You can copy its OQILA WP version from `./install/data/index.php`.

## Deploying
(soon)

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
