# OqilaCMS Installation

1. `cd {path of installation folder}`
1. `git clone https://{bitbucket-username}@bitbucket.org/fazliddin2014/oqilacms.git` {folder with project name}
1. Create database for project at phpMyadmin
1. Import `/{folder with project name}/protected/migrations/oqilacms.sql`
1. `cd /{folder with project name}/protected/config/`
1. `cp db.php.dist db.php`
1. Edit `db.php`, change `db.name`, `db.user`, `db.password`
1. `cp main-local.php.dist main-local.php`
1. `cp params-local.php.dist params-local.php`
1. `cp vendor-local.php.dist vendor-local.php`
1. Create file with name `DEBUG` at `/{folder with project name}` (This enables debug mode)
1. `chmod 0777 -R /{folder with project name}/protected/runtime` (Linux only, this opens write access to that folder)
1. `chmod 0777 -R /{folder with project name}/public/assets`
1. Apache's VirtualHost's DocumentRoot should point to `/{folder with project name}/public` folder
1. Login to admin: `http://{your-domain}.loc/backend`
```
   login: admin
   password: 12345678
```

## Apache configuration on Linux
1. Create file `/etc/apache2/sites-available/{folder with project name}.conf`
1. Put this on that file
```
    <VirtualHost *:80>
    	ServerName {your-domain}.loc
    	ServerAlias www.{your-domain}.loc

    	ServerAdmin webmaster@localhost
    	DocumentRoot /var/www/vhosts/{folder with project name}/public

    	ErrorLog ${APACHE_LOG_DIR}/error.log
    	CustomLog ${APACHE_LOG_DIR}/access.log combined
    </VirtualHost>
```
1. `sudo a2ensite {folder with project name}`
1. `sudo service apache2 restart`
1. Add following to `/etc/hosts` file
```
    127.0.1.1	{your-domain}.loc
```

# Working with upstream for getting latest changes
Read more on https://www.atlassian.com/git/tutorials/git-forks-and-upstreams

Let's see remote
`git remote -v`

Let's add upstream
`git remote add upstream <oqila-cms-git-url>`

Let's download latest changes
`git fetch upstream`

Now time to merge changes
```
git checkout master
git merge upstream/master
```

If you have merge conflict use `git mergetool`