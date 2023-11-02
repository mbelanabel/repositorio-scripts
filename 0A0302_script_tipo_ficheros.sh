#Script que evalua el numero de parametros pasados, si es uno y es un fichero, que nos diga el tipo de fichero que es.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: conocer el numero de argumentos en la línea de orden.
#Objetivo didactico: evaluar numero de parametros.
#Key words: /dev/null; 2>; 

#!/bin/bash
case $# in
       0 ) echo No has introducido ningun parametros
       ;;
       1 | 2)   if ls -l $1 > /dev/null 2>/dev/null
                then

                if [ -d $1 ]; then
	          echo $1 es un directorio
		else
	 	  tipo= `ls -l $1 | cut -c1`
		  case $tipo in
		   -) echo "fichero ordinario: -"; echo " "
    		         ;;
		   l) echo "enlace simbolico: l"; echo " "
			 ;;
		   b) echo "fichero de dispositivo por bloques: b"; echo " "
			 ;;
		   c) echo "fichero de dispositivo por caracteres: c"; echo " "
			 ;;
		   s) echo "fichero tipo socket: s"; echo " "
			 ;;
		   p) echo "fichero tipo pipe: p"; echo " "
			 ;;
		   *) echo "opcion incorrecta"; echo " "
			 ;;
		  esac
		fi
		if [ $# -eq 2 ]
		then
		 bash $0 $2
		fi
	       else
		echo No encuentro el fichero $1
	     fi
	     ;;
	*)   echo Has introducido demasiados parametros
 	     ;;
esac
