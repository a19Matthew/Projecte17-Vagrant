#!/bin/bash
#Actulitza els repositoris
apt-get update
#Instala apache2
apt-get install -y apache2
#Instala php i dependencies
apt-get install -y php5 php5-mysql
#Encen el servei apache2
sudo /etc/init.d/apache2 restart
#Es canvia de directori al public de apache
cd /var/www/html
sudo apt-get install -y git
#Descarrega adminer
git clone https://github.com/vrana/adminer.git
#Mou adminer.php a la public
#cp adminer/index.php index.php
