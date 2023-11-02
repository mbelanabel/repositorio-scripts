#Script que contabiliza el numero de usuarios con la cuenta desactivada, expirada,...


#!/bin/bash
unset usuario
unset cuent
sudo cat /etc/shadow > .shadow
usuario=( "Contraseña encriptada" "Cuenta desactivada" "Contraseña de grupo" "Expirada")
cuent=(0 0 0 0)
while read var
do
 #Comprobamos  contraseña de usuario
 if [[ $( echo $var | cut -f2 -d":" ) = "!" ]]
 then
	cuent[1]=`expr ${cuent[1]} + 1`
 else
   if [[ $( echo $var | cut -f2 -d":" ) = "*" ]]
   then
        cuent[2]=`expr ${cuent[2]} + 1`
   else
       if [[ $( echo $var | cut -f2 -d":" ) = "!!" ]]
       then
          cuent[3]=`expr ${cuent[3]} + 1`
       else
          cuent[0]=`expr ${cuent[0]} + 1`
       fi
   fi
 fi
done < .shadow
for ((i=0; i<${#usuario[@]};i++))
do 
  echo ${usuario[$i]} ${cuent[$i]}
done
