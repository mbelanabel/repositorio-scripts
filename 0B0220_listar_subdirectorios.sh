#Este shell-script nos dice cuanto ocupa cada subdirectorio de un directorio.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: listar los subdirectorios de un directorio y su tamaño.
#Objetivo didactico: evaluar el tamaño en MB de cada subdirectorio de un directorio.
#Key words: -z; du; 
#!/bin/bash
#Comprueba argumento
if [ -z $1 ]; then
	echo "No pasaste directorio"
else
	#Obtiene los directorios y su tamano en una lista
	lista=$(du -k $1)
	IFS=$'\n'
	for fila in $lista
	do 
		dir=$(echo $fila | cut -f 2)
		let kb=$(echo $fila | cut -f 1)
		let b=1024*kb
		let mb=kb/1024
		echo "$mb MB  $dir"
	done
fi
