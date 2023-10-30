#Script que pide al usuario el valor de una variable y muestra el valor de esa variable
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: consultar el valor de una variable, pruebalo con PATH, PS1,...
#Objetivo didactico: primeros scripts, variables del sistema
#Key words: eval, $var, $PATH, $PS1,...

#!/bin/bash
echo Introduce la variable a consultar
read var; eval echo \$$var

