#Script que muestra un menu sencillo con utilidades de red
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: comprobar conectividad y ver estado de puertos 
#Objetivo didactico: menu con comandos de red
#Key words: case; ping; netstat; read

#!/bin/bash
	echo MENU
	echo "1 Hacer un ping a la dirección de red que usted elija"
	echo "2 Hacer un ping a si mismo"
	echo "3 Visualizar estado de los puertos"
	echo Introduzca una opcion
	read opcion
	case $opcion in
	1) echo “Introduce a donde hacer el ping”
	   read dir 
	   ping $dir
	   ;;
	2) echo “Hacemos ping a nosotros mismos”
	   ping 127.0.0.1
	   ;;
	3) echo “Visualizamos el estado de los puertos”
	   netstat -a
	   ;;
	   esac
