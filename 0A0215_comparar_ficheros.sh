#Script que evalua si el contenido de dos ficheros es el mismo. Si no lo es, se renombra uno de ellos.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: comparar dos ficheros, si son distintos, renombrar uno de ellos.
#Objetivo didactico: comparar ficheros.
#Key words: diff; /dev/null; $0; read

#!/bin/bash
echo "comparador de ficheros"
echo "fich 1"
read fichero1
echo "fich2"
read fichero2
diff $fichero1 $fichero2 > /dev/null
if [ $? -eq 0 ]
then
  echo "son iguales"
else
  echo "son distintos"
  mv $fichero2 $fichero1.old
  #rm $fichero2
fi
