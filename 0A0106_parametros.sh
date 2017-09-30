#Script que nos muestra el valor de los parametros pasados en la ejecución
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: visualizar parametros
#Objetivo didactico: diferenciar entre la salida $0 con los diferentes modos de ejecución (. y sh). contar el numero de parametros con $#, listar parametros con $*
#Key words: $0, $#, $*
#!/bin/bash
echo "Lo que sigue es la salida del guión: $0"
echo "Número total de argumentos de la línea de orden $#"
echo "El primer parámetro es: $1"
echo "El segundo parámetro es: $2"
echo "Esta es la lista de todos los parámetros: $*"


