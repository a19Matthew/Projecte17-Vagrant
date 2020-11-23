# Provisionament vagrant - Apache/MySQL & Adminer

[![N|Solid](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZYkNq6JQ00zK3PC-FvYqph0PzRV6ICwfBPQ&usqp=CAU)](https://github.com/a19Matthew/Projecte17)[![N|Solid](https://i0.wp.com/appiomatic.com/blog/wp-content/uploads/2019/04/lamp.png?fit=512%2C200&ssl=1)](https://github.com/a19Matthew/Projecte17)[![N|Solid](https://www.jose-aguilar.com/blog/wp-content/uploads/2014/08/adminer_logo.jpg)](https://github.com/a19Matthew/Projecte17)




[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://github.com/a19Matthew/Projecte17)

##### Aquest es un treball per el Módul 06 - Administració de Sistemes Operatius. En aquest markdown es mostra informació sobre l'inicialització d'una màquina virtual amb vagrant. Aquesta maquina virtual estarà aprovisionada amb una pila LAMP i tindrà Adminer per gestionar la base de dades amb una interfície web.

# Requeriments
- Tenir instal·lat virtualbox
- Tenir instal·lat vagrant
- Tenir els recursos de hardware necessaris

# Instal·lació
> Després de descarregar els arxius. Hem d'anar a la carpeta del projecte i executar els següents comandaments:

```sh
$ vagrant up #Aquesta comanda llegira el Vagrantfile i inicialitzará una VM privionada.
$ vagrant global-status #Aquesta comanda llista informació de les VM's. Hem de fixar-nos en la ID.
$ vagrant ssh [id-de-la-maquina] #Així podrem conectar-nos per ssh a la VM.
```
# Ús de adminer
Per accedir a adminer, només cal obreir un navegador i inserir:
>http://localhost:8080/adminer.php

## Autor

##### Matthew Rivero Ortega 
Institut Pedralbes, 2020
