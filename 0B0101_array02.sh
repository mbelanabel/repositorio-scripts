#Script que muestra el listado de amigos y su numero de telefono
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Mostrar el listado de amigos y su numero de telefono
#Objetivo didáctico: declarar dos arrays y recorrerlos mostrando su contenido
#Key words: array; declare, for do done,expr, comillas inversas

#!/bin/bash
clear
contador=0
declare -a amigos=(Juan Pedro Luis Jose Javier)
declare -a telefonos=(611222333 622333444 633555666 644555666 655666777) 
for valor in ${amigos[*]}
do
	echo "Mi amigo $contador se llama ${amigos[$contador]} y su telefono es ${telefonos[$contador]}"
	contador=`expr $contador + 1`
done
