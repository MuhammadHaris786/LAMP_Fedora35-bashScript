# Shell-Script-to-install-and-setup-apache-php-and-mysql-on-Fedora-35
Shell Script to install and setup apache php and mysql on Fedora 35																																																
After executing this bash script it will ask root password and open a file and will open a file welcome.conf

	Alias /.noindex.html /usr/share/httpd/noindex/index.html

Change this to

	Alias /.noindex.html /usr/share/httpd/noindex/index.php

and save it by Ctrl+S and then press Ctrl+X.

To change mysql password 
		
	ALTER USER 'root'@'localhost' IDENTIFIED BY'{your new password}'  /*inside mysql*/



-----------How to Download And use for beginners-------------

1) Click "go to code"

2) Click "Download as zip"

3) unzip the file

4) Open terminal

5) Go to the folder where you unzipped it by using "cd" command

6) type this command

	   chmod +744 phpDatabase.sh

this will allow you to execute the bash script then type this command

    ./phpDatabase.sh
