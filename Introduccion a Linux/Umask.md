## Umask 
La umask es una función que establece los permisos predeterminados para los nuevos archivos y directorios creados en el sistema. Puede establecerse en notación octal de tres o cuatro dígitos o bien en notación simbólica. Puede establecerse cualquier valor para umask, pero debe tomarse en consideración que ésta jamás permitirá crear nuevos archivos ejecutables.

![[Pasted image 20230629174243.png]]

![[Pasted image 20230629173955.png]]
El valor predeterminado de la máscara de usuario del sistema en CentOS, Fedora™, Red Hat™ Enterprise Linux, openSUSE™ y SUSE™ Linux Enterprise es 0022, es decir se asigna permiso 0755 (-rwxr-xr-x) para nuevos directorios y 0644 (-rw-r--r--) para nuevos archivos. El sistema jamás permite crear nuevos archivos con atributos de ejecución. El valor predeterminado se define en una variable de entorno del archivo /etc/profile y puede ser cambiado por el que el administrador del sistema considere pertinente. El valor también puede establecerse por usuario en el archivo ~/.bash_profile (CentOS, Fedora™ y Red Hat™ Enterprise Linux) o bien en el archivo ~/.profile (openSUSE™ y SUSE™ Linux Enterprise).

El valor predeterminado de la máscara de usuario utilizado por useradd, para la creación de directorios de inicio de usuarios, se define en el archivo /etc/login.defs.

En CentOS, Fedora™ y Red Hat™ Enterprise Linux el valor predeterminado de la máscara de usuario utilizada por useradd es 0077, es decir que los directorios de inicio de cada usuario que sea creado en el sistema tendrá un permiso 0700 (rwx------).

En openSUSE™ y SUSE™ Linux Enterprise el valor predeterminado de la máscara de usuario utilizada por useradd es 0022, es decir 0755 (rwxr-xr-x), debido a que la variable UMASK está deshabilitada con una almohadilla en el archivo /etc/login.defs, pues se recomienda se defina ésta variable en el archivo /etc/default/useradd.
###### Ejemplo:
*GROUP=100<br>HOME=/home<br>INACTIVE=-1<br>EXPIRE=<br>SHELL=/bin/bash<br>SKEL=/etc/skel<br>CREATE_MAIL_SPOOL=yes<br>UMASK=0077*
Para determinar el valor en notación octal para la máscara de usuario predeterminada del sistema, ejecute ***umask*** sin opciones ni argumentos.

Para determinar el valor en notación simbólica para la máscara de usuario predeterminada del sistema, ejecute ***umask con la opción -S (mayúscula)***, sin argumentos.

Para cambiar la mascara de usuario en la sesión activa y procesos hijos, se requiere ejecutar umask con el valor octal deseado. En el siguiente ejemplo, se definirá 0002 (0775, rwxrwxr-x) como máscara de usuario:

***umask 0002***

Lo anterior también se puede hacer utilizando notación simbólica:

***umask u=rwx,g=rwx,o=rx***
