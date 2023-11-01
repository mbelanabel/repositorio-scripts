#Script que permite sumar, restar, multiplicar o dividir dos numeros
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: calculadora basica
#Objetivo didactico: utilizar el comando select para elegir la operacion matemática
#Key words: PS3; select-do-done

#!/bin/bash
#Almacenamos las opciones del menu
OPCIONES="Sumar Restar Multiplicar Dividir Salir"
#Cambiamos el prompt para que sea más descriptivo
PS3="Elija una opción: "
#Leemos dos números
read -p "Número 1: " n1
read -p "Número 2: " n2
select opt in $OPCIONES
do
	if [[ $opt = "Sumar" ]]; then
	           echo $((n1+n2))
	elif  [[ $opt = "Restar" ]]; then
		      echo $((n1-n2))
	  elif [[ $opt = "Multiplicar" ]]; then
		       echo $((n1*n2))
	    elif [[ $opt = "Dividir" ]]; then
	      {
		if [[ $n2 == 0 ]]
		then 
			echo "No se puede dividir entre 0"
		else
			echo $((n1/n2))
		fi
		}
	    elif [[ $opt = "Salir" ]]
	    then
		echo "Fin"
		break
	    else
		echo "Opción erronea."
	  fi
done


