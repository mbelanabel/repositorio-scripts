#Script que encripta y/o desencripta un fichero.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Utilizar crypt para encriptar y/o desencriptar un fichero.
#Objetivo didactico: script con un menu para realizar una función de utilidad de seguridad de ficheros.
#Key words: crypt; ! -f; break

	echo “Introduzca el nombre de un fichero”
	read fich
	if [ ! -f $fich ]; then
	echo “No es un fichero ordinario”
	else
	$opcion=1;
	until [ $opcion = ”0” ]
	do
	echo “0: Salir”
	echo “1: Mostrar el contenido del fichero”
	echo “2: Encriptar el fichero”
	echo “3: Desencriptar el fichero”
	echo “Introduzca una opcion:”
	read opcion 
	case $opcion in
	0)echo “Adios”
	break;;
	1) echo “Vamos a ENCRIPTAR el fichero”
	crypt <$fich>$fich
	rm $fich
	break;;
	2) echo “Vamos a decodificar el fichero”
	crypt < $fich >$fich
	break;;
	3)echo “Vamos a mostrar el contenido del fichero”
	if [ ! -r $fich ]; then
	echo “El fichero no tiene permiso de lectura”
	else
	cat $fich
	fi
	break;;
	*) echo “Esa opción no existe”
	break;;
	esac
	done
	fi
