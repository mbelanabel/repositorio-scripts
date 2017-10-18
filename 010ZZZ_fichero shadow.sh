#!/bin/bash
unset usuario
unset cuent
sudo cat /etc/shadow > .shadow
usuario=( "Sin contraseña ::" "Cuenta desactivada" "Contraseña de grupo" "Expirada")
cuent=(0 0 0 0)
while read var
do
 #Ahora mejora el script comprobando la contraseña de usuario con un case o un select
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
 #Termina la comprobación
done < .shadow

##Ahora muestra el cuantas cuentas hay de cada tipo"
