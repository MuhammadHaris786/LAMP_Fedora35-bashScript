#!/bin/bash

#install web server on fedore (apache2)

sudo dnf -y install httpd
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=443/tcp
sudo firewall-cmd --reload
sudo systemctl start httpd
sudo systemctl enable httpd

#now install php
sudo dnf install php
php -v
cd /usr/share/httpd/noindex/
echo '<?php phpinfo(); ?>' > index.php
sudo nano /etc/httpd/conf.d/welcome.conf
#change index.html to index.php

systemctl restart httpd.service
firefox $echo $(hostname -I | awk '{print $1}')

#install mysql on fedora

sudo dnf install https://repo.mysql.com//mysql80-community-release-fc35-1.noarch.rpm
sudo dnf install mysql-community-server

sudo systemctl restart mysqld.service
sudo systemctl enable mysqld.service

echo $(sudo grep -i " password" /var/log/mysqld.log) > pass.txt
echo "The password is: $(tail -c -13 pass.txt)" 

mysql -u root -p

#to change password
#inside mysql type
#ALTER USER 'root'@'localhost' IDENTIFIED BY'{your new password}'

