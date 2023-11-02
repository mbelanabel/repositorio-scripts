#Script que compara cadenas de caracteres
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: comparar 3 valores introducidos por teclado.
#Objetivo didactico: comparar valores y operador AND
#Key words: if-else-fi; -a, read

#!/bin/bash
echo -e "introduce valor 1 \c"; read var1
echo -e "Introduce valor 2 \c"; read var2
echo -e "Introduce valor 3 \c"; read var3
if [[ $var1 = $var2 && $var1 = $var3 ]]
then
 echo "los valores son iguales"
 echo valor 1 $var1
 echo valor 2 $var2
 echo valor 3 $var3
else
  if [[ $var1 = $var2 ]]
  then
    echo "Los valores 1 y 2 son iguales"
  else
    if [[ $var1 = $var3 ]]
    then
      echo "Los valores 1 y 3 son iguales"
    else
      if [[ $var2 = $var3 ]]
      then
        echo "Los valores 2 y 3 son iguales"
      else
        echo "Los valores son diferentes"
      fi
    fi
  fi
fi
