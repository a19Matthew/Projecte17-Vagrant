# -*- mode: ruby -*-
# vi: set ft=ruby :
 
#Linea que comença la configuració del vagrant file
Vagrant.configure("2") do |config|

#Box que volem instalar
  config.vm.box = "ubuntu/trusty64"
#Nom de xarxa i ip de la vm
  #config.vm.network "public_network", ip: "192.168.33.10"
#Configuració de ports NAT
#  config.vm.network "forwarded_port", guest: 80, host: 8080
#Ruta del fitxer copmartit
  config.vm.synced_folder "./", "/vagrant"
#Nom del host
  config.vm.hostname = "ASO-Project"
  config.ssh.password = "vagrant"
#Linea per configurar parametres de virtualbox
  config.vm.provider "virtualbox" do |vb|
#Parametre de memoria ram
	vb.memory = "2048"
  end

#Configuració de l'aprovisionament

#Configuració de apache
  config.vm.define "web" do |app|
	app.vm.hostname = "web"
	app.vm.network "public_network", ip: "192.168.33.11"
	app.ssh.password = "vagrant"
	app.vm.network "forwarded_port", guest: 80, host: 8080
	app.vm.provision "shell", path: "provision-for-apache.sh"
  end
#Configuració de MySQL
  config.vm.define "db" do |app|
	app.vm.hostname = "db"
	app.vm.network "public_network", ip: "192.168.33.12"
	app.ssh.password = "vagrant"
	app.vm.network "forwarded_port", guest: 80, host: 1234
	app.vm.network "forwarded_port", guest: 3306, host: 3306
	app.vm.provision "shell", path: "provision-for-mysql.sh"
  end
end
