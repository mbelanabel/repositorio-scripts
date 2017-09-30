#Script que muestra la tabla de multiplicar del 0 al 10 de un numero que elegido por el usuario
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Mostrar la tabla de multiplicar de un número
#Objetivo didactico: Utilizar un for para mostrar la tabla de multiplicar de un número
#Key words: for-do-done; operaciones_matematicas

#!/bin/bash
echo -n "Indique un número: "
read n
for ((i=0;i<=10;i++))
do
  echo "${n}x$i=$(($n*$i))"
done

