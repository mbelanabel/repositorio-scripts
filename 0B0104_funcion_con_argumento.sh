
#Script que utiliza dos funciones, una de ellas recibe un argumento
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: mostrar por pantalla unos mensajes
#Objetivo didactico: utilizar funciones que reciben parametros cuando se les invoca
#Key words: function; $1;

#!/bin/bash
#Definicmos dos funciones
function salir() {
	echo "Vamos a salir"
}
function imprimir() {
	echo "La función imprimir muestra el valor de \$1 que es: $1"
}

#Comienza el script
imprimir Hola  #Llamamos a la función imprimir con el argumento Hola
imprimir Adios #Llamamos a la función imprimir con el argumento Adios
salir          #Llamamos a la función salir
echo "Fin del script"


