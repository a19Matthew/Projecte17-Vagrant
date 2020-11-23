#!/bin/bash
#Instala debconf-utils
apt-get -y install debconf-utils
#Asigna root a una variable
DB_ROOT_PASSWD=root
#Canvia la contrassenya de mysql
debconf-set-selections <<< ”mysql-server mysql-server/root_password
password $DB_ROOT_PASSWD”
#Envia un altre cop la contrassenya
debconf-set-selections <<< ”mysql-server mysql-server/root_password_again
password $DB_ROOT_PASSWD”
#Instala mysql-server
apt-get install -y mysql-server
#Afegeix una linea de codi a mysqld.cnf
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf
#Reinicia mysql
/etc/init.d/mysql restart
#Entra a mysql i dona tots els privilegis a root
mysql -uroot mysql -p$DB_ROOT_PASSWD <<< ”GRANT ALL PRIVILEGES ON *.* TO
root@'%' IDENTIFIED BY '$DB_ROOT_PASSWD'; FLUSH PRIVILEGES;”
