#Script que emplea dos funciones, una para saludar y otra para despedirse
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Saludar y despedirse del usuario
#Objetivo didactico: definir funciones y llamarlas
#Key words: funciones

#!/bin/bash
#Definimos dos funciones
salir (){
	echo Adios
}
hola (){
	echo Hola!
}
#Comienza el script
echo Vamos a llamar a la función hola
hola
echo Vamos a llamar a la función salir
salir
echo "Fin del script"
