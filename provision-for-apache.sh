#!/bin/bash
#Actulitza els repositoris
apt-get update
#Instala apache2
apt-get install -y apache2
#Instala php i dependencies
apt-get install -y php libapache2-mod-php php-mysql
#Encen el servei apache2
sudo /etc/init.d/apache2 restart
#Es canvia de directori al public de apache
cd /var/www/html
#Descarrega adminer
wget https://github.com/vrana/adminer/releases/download/v4.3.1/adminer
-4.3.1-mysql.php
#Mou adminer.php a la public
mv adminer-4.3.1-mysql.php adminer.php
