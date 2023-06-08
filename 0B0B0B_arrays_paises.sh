
#!/bin/bash
#Ejemplo de dos arrays uno de paises y otro de sus capitales.
#El script pregunta al usuario por un pais y le dice su capital.
#Autor: Ana Isabel Miguel


declare -a paises=( España Portugal Francia Italia )
declare -a capitales=( Madrid Oporto Paris Roma )
posicion=0
encontrado=0
read -p "Dime un pais: " bpais
for pais in ${paises[*]}
do
	#echo $pais
	if [ $bpais = $pais ]
	then
		#echo "Encontrado en posicion $posicion"
		echo "La capital de $bpais es ${capitales[$posicion]}"
		encontrado=1
	else
		echo "No encontrado en posicion $posicion"
	fi
	posicion=`expr $posicion + 1`
done 
echo "la variable encontrado vale $encontrado"
if [ $encontrado = "0" ]
then
	echo "El pais $bpais no esta"
else 
	echo "El pais $bpais si esta en mi array"
fi	

