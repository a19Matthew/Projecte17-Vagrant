# -*- mode: ruby -*-
# vi: set ft=ruby :
 
#Linea que comença la configuració del vagrant file
Vagrant.configure("2") do |config|

#Box que volem instalar
  config.vm.box = "ubuntu/trusty64"
#Nom de xarxa i ip de la vm
  config.vm.network "matthew_network", ip: "192.168.33.10"
#Ruta del fitxer copmartit
  config.vm.synced_folder "./", "/vagrant"
#Nom del host
  config.vm.hostname = "ASO-Project"
#Linea per configurar parametres de virtualbox
  config.vm.provider "virtualbox" do |vb|
#Parametre de memoria ram
	vb.memory = "2048"
  end

#Configuració de l'aprovisionament

#Configuració de apache
  config.vm.define "web" do |app|
	app.vm.hostname = "ASO-Project"
	app.vm.network "matthew_network"
	app.vm.provision "shell", path: "provision-for-apache.sh"
  end
#Configuració de MySQL
  config.vm.define "db" do |app|
	app.vm.hostname = "ASO-Project"
	app.vm.network "matthew_network"
	app.vm.provision "shell", path: "provision-for-mysql.sh"
  end
end
