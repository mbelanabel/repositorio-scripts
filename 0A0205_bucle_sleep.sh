#Script que no avisa cuando un usuario concreto se conecta al sistema
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: cuando se ejecuta el script este consulta cada 30 segundos si el usuario pasado por parametro ha iniciado sesión en el sistema, si es así, nos avisa.
#Objetivo didactico: introducir el bucle until-do-done
#Key words: until-do-done; comillas inversas; -gt; parametros
#!/bin/bash
until [ `who -a | grep $1 | wc -l ` -gt "0" ]
do
	sleep 30
done
echo "Atención $1 conectado"

