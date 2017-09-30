#Script que nos muestra parte del contenido del fichero /etc/passwd
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: listar nombres de usuarios y su directorio home
#Objetivo didactico: primeros scripts
#Key words: /etc/passwd, pipe, cut
#!/bin/bash
cat /etc/passwd | cut -f1,6 -d:

