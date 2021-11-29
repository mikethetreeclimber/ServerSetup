#!/bin/bash

echo "                                                        
Author: 	
Creation Date:  21/11-29
Description: 	Script that will install a Lampstack server 
		with phpmyadmin for Ubuntu and Debian Distros 
"

echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |     This Script will Install a LAMP Stack Server    |       
       |                  On Ubuntu 21.10                    |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"
echo " 
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |      Lest start By Running Update and Upgrade       |
       |            Must Be root user to run script          |       
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"

# Update
echo ">>> Updating our list of packages ..."
apt-get update 
apt-get upgrade -y 

echo ">>> Installing Base Items ( curl, wget, certbot, expect ) ..."
# Install base items
apt-get install -y curl wget expect certbot 

 
echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |              Update and Upgrade Done                |
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"
echo
read -p "- Would you like to install LAMP stack? (y/n): " install_lamp < /dev/tty
if [[ $install_lamp = 'y' ]]; then


echo "

██╗      █████╗ ███╗   ███╗██████╗     ███████╗████████╗ █████╗  ██████╗██╗  ██╗
██║     ██╔══██╗████╗ ████║██╔══██╗    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝
██║     ███████║██╔████╔██║██████╔╝    ███████╗   ██║   ███████║██║     █████╔╝ 
██║     ██╔══██║██║╚██╔╝██║██╔═══╝     ╚════██║   ██║   ██╔══██║██║     ██╔═██╗ 
███████╗██║  ██║██║ ╚═╝ ██║██║         ███████║   ██║   ██║  ██║╚██████╗██║  ██╗
╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝         ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
                                                                                
"
echo "==============================================="
echo ">>> LAMP Stack Installation"
echo "==============================================="
echo

       echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |       Installing and Testing Apache Webserver       |
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"

        # Install Apache and the Apache certbot plugin using Ubuntu’s package manager 
        apt-get update
        systemctl stop apache2 -f
        sleep 4
        apt install apache2 python3-certbot-apache -f -y

        # disable the default website that comes installed with Apache.
        a2dissite 000-default

    # allow port 80 traffic 
    ufw allow 'Apache'
    
    echo "

██╗      █████╗ ███╗   ███╗██████╗     ███████╗████████╗ █████╗  ██████╗██╗  ██╗
██║     ██╔══██╗████╗ ████║██╔══██╗    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝
██║     ███████║██╔████╔██║██████╔╝    ███████╗   ██║   ███████║██║     █████╔╝ 
██║     ██╔══██║██║╚██╔╝██║██╔═══╝     ╚════██║   ██║   ██╔══██║██║     ██╔═██╗ 
███████╗██║  ██║██║ ╚═╝ ██║██║         ███████║   ██║   ██║  ██║╚██████╗██║  ██╗
╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝         ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
                                                                                
"
echo "==============================================="
echo ">>> LAMP Stack Installation"
echo "==============================================="
echo

      echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |           Installing and testing PHP 8.0            |
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"

        apt-get update > /dev/null
        apt-get install -y php8.0-cli php8.0-fpm php8.0-bcmath php8.0-bz2 php8.0-curl php8.0-enchant php8.0-gd
        apt-get install -y php8.0-imagick php8.0-intl php8.0-mbstring php8.0-mcrypt php8.0-memcached 
        apt-get install -y php8.0-mysql php8.0-readline php8.0-redis php8.0-sqlite3
        apt-get install -y php8.0-xml php8.0-xsl php8.0-zip

        sed -i 's@^post_max_size.*@post_max_size = 100M@' /etc/php/8.0/cli/php.ini
        sed -i 's@^upload_max_filesize.*@upload_max_filesize = 50M@' /etc/php/8.0/cli/php.ini


    echo "

██╗      █████╗ ███╗   ███╗██████╗     ███████╗████████╗ █████╗  ██████╗██╗  ██╗
██║     ██╔══██╗████╗ ████║██╔══██╗    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝
██║     ███████║██╔████╔██║██████╔╝    ███████╗   ██║   ███████║██║     █████╔╝ 
██║     ██╔══██║██║╚██╔╝██║██╔═══╝     ╚════██║   ██║   ██╔══██║██║     ██╔═██╗ 
███████╗██║  ██║██║ ╚═╝ ██║██║         ███████║   ██║   ██║  ██║╚██████╗██║  ██╗
╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝         ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
                                                                                
"
echo "==============================================="
echo ">>> LAMP Stack Installation"
echo "==============================================="
echo
echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |           Restarting Apache Please Wait.            |       
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"

systemctl restart php8.0-fpm.service
 systemctl stop apache2
 systemctl start apache2

echo "

██╗      █████╗ ███╗   ███╗██████╗     ███████╗████████╗ █████╗  ██████╗██╗  ██╗
██║     ██╔══██╗████╗ ████║██╔══██╗    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝
██║     ███████║██╔████╔██║██████╔╝    ███████╗   ██║   ███████║██║     █████╔╝ 
██║     ██╔══██║██║╚██╔╝██║██╔═══╝     ╚════██║   ██║   ██╔══██║██║     ██╔═██╗ 
███████╗██║  ██║██║ ╚═╝ ██║██║         ███████║   ██║   ██║  ██║╚██████╗██║  ██╗
╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝         ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
                                                                                
"
echo "==============================================="
echo ">>> LAMP Stack Installation"
echo "==============================================="
echo

echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |                 Installing MariaDB                  |       
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"

        # Install MySQL without prompt ( pre-seed the debconf database with root user password)
        debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
        debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

        # Install MySQL package
        apt-get update
         apt install mariadb-server-10.5 mariadb-client-10.5 -y

        # Securing MySQL
       echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |             Securing MariaDB Installation           |
       |                                                     |       
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"

        # Default password
        MYSQL_ROOT_PASSWORD="root"

        SECURE_MYSQL=$(expect -c "
        set timeout 2
        spawn mysql_secure_installation
        expect \"Enter password for user root:\"
        send \"root\r\"
        expect \"Press y|Y for Yes, any other key for No:\"
        send \"n\r\"
        expect \"Change the password for root ? ((Press y|Y for Yes, any other key for No)\"
        send \"n\r\"
        expect \"Remove anonymous users?\"
        send \"y\r\"
        expect \"Disallow root login remotely?\"
        send \"y\r\"
        expect \"Remove test database and access to it?\"
        send \"y\r\"
        expect \"Reload privilege tables now?\"
        send \"y\r\"
        expect eof
        ")


echo "

██╗      █████╗ ███╗   ███╗██████╗     ███████╗████████╗ █████╗  ██████╗██╗  ██╗
██║     ██╔══██╗████╗ ████║██╔══██╗    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝
██║     ███████║██╔████╔██║██████╔╝    ███████╗   ██║   ███████║██║     █████╔╝ 
██║     ██╔══██║██║╚██╔╝██║██╔═══╝     ╚════██║   ██║   ██╔══██║██║     ██╔═██╗ 
███████╗██║  ██║██║ ╚═╝ ██║██║         ███████║   ██║   ██║  ██║╚██████╗██║  ██╗
╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝         ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
                                                                                
"
echo
read -p "- Would you like to create virtual host(s) for your site(s) ? (y/n): " website_creation < /dev/tty
if [[ $website_creation = 'y' ]]; then

echo "

██╗      █████╗ ███╗   ███╗██████╗     ███████╗████████╗ █████╗  ██████╗██╗  ██╗
██║     ██╔══██╗████╗ ████║██╔══██╗    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝
██║     ███████║██╔████╔██║██████╔╝    ███████╗   ██║   ███████║██║     █████╔╝ 
██║     ██╔══██║██║╚██╔╝██║██╔═══╝     ╚════██║   ██║   ██╔══██║██║     ██╔═██╗ 
███████╗██║  ██║██║ ╚═╝ ██║██║         ███████║   ██║   ██║  ██║╚██████╗██║  ██╗
╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝         ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
                                                                                
"
    echo
    echo "==============================================="
    echo ">>> Virtual Host(s) Configuration"
    echo "==============================================="
    echo

    echo
    echo "- Enter all the domains (without www.) you want to host on this server (Print 'save' when finished):"
    while IFS= read -r line < /dev/tty || exit; do
        [[ $line = "save" ]] && break
        [[ $line =~ "www." ]] && continue
        if [[ $line =~ "." ]]; then
            # Create the directory for the domain
            mkdir /var/www/html/"$line"

            # Assign ownership of the directory with the $USER environment variable, which will reference your current system user
            chown -R $USER:$USER /var/www/html/"$line"

            touch /var/www/html/"$line"/index.html
            touch /var/www/html/"$line"/info.php

            # Create test files
            echo '<html>
<head>
     <title>'$line' website</title>
</head>
<body>
    <h1>Hello World!</h1>
    <p>Welcome to <strong>'$line'</strong>.</p>
</body>
</html>' > /var/www/html/"$line"/index.html
            echo '<?php
phpinfo();' > /var/www/html/"$line"/info.php

            # Create virtual host
            echo '<VirtualHost *:80>
    ServerName '$line'
    ServerAlias www.'$line'
    ServerAdmin admin@'$line'
    DocumentRoot /var/www/html/'$line'/public
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>' > /etc/apache2/sites-available/"$line".conf

            echo '<VirtualHost *:80>
    ServerName '$line'
    ServerAlias www.'$line'
    ServerAdmin admin@'$line'
    DocumentRoot /var/www/html/'$line'/public
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>' > /etc/apache2/sites-available/"$line".conf

            # Enable the new virtual host
            a2ensite "$line" > /dev/null

            # Display success message
            echo "> Record for "$line" was created succesfully."
        fi
    done
fi

echo
read -p "- Would you like to use LetsEncrypt (certbot) to configure SSL(https) for your existing site(s)?
  Note 1: This will generate a certificate for every virtual host on your apache server.
  Note 2: Do this only if your domain(s) DNS is pointing correctly to this server.
  (y/n): " generate_cert < /dev/tty
if [[ $generate_cert = 'y' ]]; then

    echo
    echo "==============================================="
    echo ">>> SSL Configuration"
    echo "==============================================="
    echo

    # Register with Let's Encrypt, including agreeing to the Terms of Service.
    # We'd let certbot ask the user interactively, but when this script is
    # run in the recommended curl-pipe-to-bash method there is no TTY and
    # certbot will fail if it tries to ask.
    if [ ! -d /etc/letsencrypt/accounts/acme-v02.api.letsencrypt.org/ ]; then
        echo
        echo "-----------------------------------------------"
        echo "We're automatically agreeing to Let's Encrypt subscriber agreement."
        echo "See https://letsencrypt.org."
        echo
        certbot register --register-unsafely-without-email --agree-tos --no-eff-email > /dev/null
    fi
    # Make sure no other Certbot instance is running ( avoid error "Another instance of Certbot is already running." )
    if find / -type f -name ".certbot.lock" > /dev/null; then
        find / -type f -name ".certbot.lock" -exec rm {} \;
    fi

    # Find all vhost files ( default.conf & ssl.conf ) and add their content to a temporary file
    find /etc/apache2/sites-available -type f -name "*.conf" -not -name "*ssl.conf" -not -name "*default.conf" -not -name "www.*" -exec cat {} \; > temp-vhost.txt
    # Use 'awk' on the temporary file content to extract existing domain into an array
    existing_domains=($(awk '$1 ~ /^(ServerName)/ { for (i=2; i<=NF; i++) print $i }' temp-vhost.txt))

    # Convert the array to the format we can use to use the domains on certbot command
    deli=""
    joined_domains=""
    for site in "${existing_domains[@]}"; do
        read -p "- Would you like to configure SSL for $site
  (y/n): " generate_cert_for_site < /dev/tty
        if [[ $generate_cert_for_site = 'y' ]]; then
            joined_domains+="$deli$site"
            deli=" -d "
        fi
    done
    # Remove the temp file
    rm temp-vhost.txt

    echo
    echo ">>> Generate SSL certifcate(s) for the selected domain(s):"
    echo
    # Make sure Certbot will run non-interactively
    # Allow it to enable the site and SSL modules for us
    certbot --apache -n -d $joined_domains --redirect --keep-until-expiring --expand --apache-handle-modules "True" --apache-handle-sites "True"

    # Run cron job for auto-renewal ( if it doesn't already exist )
    if ! crontab -l &> /dev/null | grep -q "certbot renew"; then
        crontab -l &> /dev/null > cronjobs.txt #Dump the existing cron jobs to a file
        echo "15 3 * * * /usr/bin/certbot renew --quiet" >> cronjobs.txt # Add a new job to the file
        cat cronjobs.txt > /var/spool/cron/crontabs/"$USER" # Replace content of crontab with our cron jobs file
        rm cronjobs.txt
    fi

    # allow traffic secure for Apache profile ( Use 'ufw status' to verify  )
    ufw allow 'Apache Full' > /dev/null
    ufw delete allow 'Apache' > /dev/null

fi

# Reload apache2 so our changes would take effect
systemctl reload apache2

echo ">>> Running clean up ..."

# Remove 'expect' package
apt-get purge -y expect > /dev/null
# Remove packages that are no longer needed
apt-get autoremove -y > /dev/null





echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |                   Congratulation!                   |
       |   You should now have a LAMP stack webserver with   |
       |  Linux, Apache, MariaDB and PHP set up and running! | 
       |  You are now ready to start building your website.  |
       |                    Ubuntu 21.10                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
"
 sleep 1
 
 
echo "
                                ''~``
                               ( o o )
       +------------------.oooO--(_)--Oooo.------------------+
       |                                                     |
       |                                                     | 
       |                                                     |
       |                Enjoy N Have A GoodDay               |
       |                                                     |
       |                                                     |
       |                                                     |
       |                                                     |
       |                    .oooO                            |
       |                    (   )   Oooo.                    |
       +---------------------\ (----(   )--------------------+
                              \_)    ) /
                                    (_/
    "
sleep 3


exit 
fi
