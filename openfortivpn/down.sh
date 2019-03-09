#!/bin/bash

#Comprobamos si existe un proceso ya existente y optenemos el pid
var=$(ps aux | grep "sudo openfortigui" | grep -v grep | awk '{print $2}')

#Si existe matamos proceso y pedimos contraseña sudo. Y si no existe matamos todos los procesos de openfortigui.
if test -n $var;then
        terminator -e "sudo kill $var"
else
	killall openfortigui
fi

#Los procesos con "sudo openfortigui" son los que se ejecutan desde la barra por consola.#Los proceos de programa openfortigui son los ejecutados desde la interface gráfica del programa.
