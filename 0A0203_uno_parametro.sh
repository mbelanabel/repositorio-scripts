#Script que evalua si se ha pasado un solo parámetro
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: evaluar si se ha pasado un único parámetro
#Objetivo didactivo: comparar el numero de parámetros y el numero 1
#Key words: if-else; $#; 
#!/bin/bash
if [ $# -eq 1 ]
then
	echo "Un único parámetro pasado"
else
	echo "Debe pasar un único parámetro"
fi
