#Script que nos permite ver como se ejecuta la orden sleep en un shell-script
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: parar durante un tiempo determinado la ejecución del script
#Objetivo didactico: introducir el comando sleep en shell-script
#Key words: sleep; sort

#!/bin/bash
echo "Vamos a ver la orden sleep de gestión de procesos"
echo "Paciencia... Vamos a dormir durante 40 segundos... cuenta hasta 40"
echo sleep 40
sleep 40
echo "He despertado"
echo "Ordenamos según 5 campo, sin tener en cuenta líneas en blanco el fichero passwd"
sort -b -t: -k5 /etc/passwd


