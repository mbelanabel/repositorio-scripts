#!/bin/bash
#Script que muestra un mensaje con los felinos en peligro de extinción y 
#un segundo mensaje con los felinos que no estan en peligro de extinción
peligrosi=" "
peligrono=" "
declare -a felinos=( tigre león leona guepardo lince )
for felino in ${felinos[*]}
do
  echo "¿El $felino está en peligro de extinción? (S/N)"
  read respuesta
  if [[ "$respuesta" =~ [sS|Si] ]]
  then
	peligrosi+=" $felino"
  else
	peligrono+=" $felino"
  fi
done
echo "Los felinos: $peligrosi están en peligro de extinción"
echo "Los felinos: $peligrono no están en peligro de extinción"
