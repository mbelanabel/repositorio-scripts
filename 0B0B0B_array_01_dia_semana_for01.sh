#!/bin/bash
#Muestra los dias de la semana con un for
contador=1
for diasemana in Lunes Martes Miercoles Jueves Viernes Sabado Domingo
do
	echo "Dia $contador: $diasemana"
	contador=`expr $contador + 1`
done

