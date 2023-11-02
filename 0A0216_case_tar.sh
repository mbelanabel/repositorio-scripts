#Script que muestra un menu sencillo para empaquetar y comprimir 2 ficheros
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: empaquetar/desempaquetar y comprimir/descomprimir 2 ficheros
#Objetivo didactico: redactar menu con comando tar.
#Key words: tar; case-in-esac; 


#!/bin/bash
	echo "MENU DE UTILIDADES"
	echo " 1 EMPAQUETAR Y COMPRIMIR"
	echo " 2 DESEMPAQUETAR Y DESCOMPRIMIR"
	echo " 3 MOSTRAR EL CONTENIDO DE UN FICHERO .TAR.GZ"
	echo " 0 SALIR"
	echo "Introduzca una opcion"
	read opcion
	case $opcion in
	1) echo "empaquetar y comprimir"
	echo "Introduzca el fichero1"
	read f1
	echo "Introduzca el fichero2"
	read f2
	echo "Introduzca el nombre del paquete resultante"
	read paquete
	tar czvf $paquete.tar.gz  $f1 $f2
	;;
	2) echo "desempaquetar y descomprimir"
	echo "Introduzca el fichero a desempaquetar y descomprimir"
	read paquete
	tar xzvf $paquete
	;;
	3) echo "Mostar el contenido del paquete"
        read paquete
        tar tzvf $paquete
        ;;
	0) echo "adios"
	;;
	*) echo "Opcion incorrecta"
	;;
	esac
