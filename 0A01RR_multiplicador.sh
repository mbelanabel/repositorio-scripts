#Scripts: multiplicador
#Autores: Ana Isabel Miguel
#Objetivo: Multiplica todos los caracteres
#Objetivo didactico:Hacer calculadoraf
#Key words: while; if; 
#!/bin/bash

#Dos variables
#parar es una variable flag o bandera para que pare cuando introduzcamos un 0
#auxiliar es la variable donde vamos a guardar los resultados parciales o final.

parar=1
auxiliar=1


#mientras el contenido de la variable parar sea distinto de 0, seguimos...
while [ "$parar" != "0" ]
do
	#Pedimos numero y lo guardamos en var1
	echo "Introduce un número"
	read var1
	#Hacemos la multiplicación
        auxiliar=$((var1*auxiliar))
        # auxiliar=$xxxxxx es una asignación
	
	echo "El resultado acumulado es : $auxiliar"
	echo "¿Si quieres parar de meter numero pulsa 0 ?"
        read parar
	if [ "$parar" == "0" ]
			then
			parar=0
	fi
done 
echo "El resultado final es : $auxiliar"
