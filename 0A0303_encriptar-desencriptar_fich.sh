#Script que encripta y/o desencripta un fichero.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Utilizar gpg para encriptar y/o desencriptar un fichero.
#Objetivo didactico: script con un menu para realizar una función de utilidad de seguridad de ficheros.
#Key words: gpg;

#!/bin/bash
	echo MENU
	echo 1 ENCRIPTAR FICHERO
	echo 2 DESENCRIPTAR FICHERO
	echo 3 SALIR
	echo "Introduzca la opcion"
		read opcion
		echo "La opcion elegida es $opcion"
	case $opcion in
	1) echo "1 Vamos a encriptar un fichero"
	echo "Introduzca el fichero a encriptar"
	read fichero
	gpg -c $fichero
	echo "Ya hemos encriptado el fichero $fichero"
	ls -al | more   
	echo "Desea borrar el fichero en claro?"
	echo "1 si"
	echo "2 no"
	echo "Introduzca su opcion"
	read respuesta 
	case $respuesta in
	1 | si | s | SI | S | Y | y ) rm $fichero
	;;
	2 | no | n | NO | N ) echo "Conservara su fichero en claro"
	;;
	*) echo "opcion incorrecta"
	;;
	esac
	 ;;
	2) echo "2 Vamos a desencriptar un fichero"
	echo "Introduzca el fichero a desencriptar"
	read fichero2
	gpg $fichero2
	echo "Ya hemos desencriptado el fichero $fichero2"
	echo "desea visualizar el contenido del fichero desencriptado"
  	echo "1 si"
        echo "2 no"
        echo "Introduzca su opcion"
        read respuesta
        case $respuesta in
         1 | si | s | SI | S | Y | y ) cat $fichero
                                        ;;
         2 | no | n | NO | N ) echo "Para visualizarlo utilizar la orden pertinente"
                ;;
         *) echo "opciÛn incorrecta"
                ;;
        esac
        ;;
	3) echo "3 Gracias por utilizar este shell-cript" 
        ;;
	*) echo "Opcion incorrecta"
     	;;
esac
