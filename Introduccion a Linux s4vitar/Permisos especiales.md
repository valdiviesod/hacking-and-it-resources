***chmod +t file -> Asignar sticky bit

Hay una forma de cuatro dígitos. Bajo este esquema el estándar de tres dígitos descrito arriba se convierte en los últimos tres dígitos del conjunto. El primer dígito representa el bit de los permisos adicionales. En sistemas y equipamiento lógico donde es obligatorio incluir este primer dígito del conjunto de cuatro y se prescinde de asignar permisos adicionales, se debe establecer cero como valor de éste. 

1. El bit pegajoso (sticky bit) añade 1 al total de la suma.

2. El bit setgid añade 2 al total de la suma.

3. El bit setuid añade 4 al total de la suma.

![[Pasted image 20230629183958.png]]
Cuando un archivo carece de permisos de ejecución o bien si un directorio carece de permiso de acceso en alguna de las clases y se le es asignado un permiso especial, éste se representa con una letra mayúscula.
![[Pasted image 20230629184052.png]]
### Ejemplos permisos regulares.

|Valor octal|Valor umask|Clase de Usuario|Clase de Grupo|Clase de Otros|
|---|---|---|---|---|
|0400|0377|r--|---|---|
|0440|0337|r--|r--|---|
|0444|0333|r--|r--|r--|
|0500|0277|r-x|---|---|
|0550|0227|r-x|r-x|---|
|0555|0222|r-x|r-x|r-x|
|0644|0133|rw-|r--|r--|
|0664|0113|rw-|rw-|r--|
|0666|0111|rw-|rw-|rw-|
|0700|0077|rwx|---|---|
|0711|0066|rwx|--x|--x|
|0707|0070|rwx|---|rwx|
|0744|0033|rwx|r--|r--|
|0750|0027|rwx|r-x|---|
|0755|0022|rwx|r-x|r-x|
|0775|0002|rwx|rwx|r-x|
|0777|0000|rwx|rwx|rwx|

### Ejemplos permisos especiales.

|Valor octal|Clase de Usuario|Clase de Grupo|Clase de Otros|
|---|---|---|---|
|1644|rw-|r--|r-T|
|2644|rw-|r-S|r--|
|3644|rw-|r-S|r-T|
|4644|rwS|r--|r--|
|5644|rwS|r--|r-T|
|6644|rwS|r-S|r--|
|7644|rwS|r-S|r-T|
|1777|rwx|rwx|rwt|
|2755|rwx|r-s|r-x|
|3755|rwx|r-s|r-t|
|4755|rws|r-x|r-x|
|5755|rws|r-x|r-t|
|6755|rws|r-s|r-x|
|7755|rws|r-s|r-t|

## Chattr y Lsattr
- chattr -i -V file -> Asigna la flag de inmutable (nadie la puede borrar, ni root)y muestra lsattr en modo verbose (Hay mas opciones para el comando)
## SUID y SGID
SUID (4000): Sea el usuario que sea puedo ejecutar binarios temporalmente como el propietario
SGID (2000): Correr binarios como si perteneciara al grupo
- chmod u+s -> SUID
- chmod g+s -> SGID
- find / -type f -perm -4000 2>/dev/null -> Buscar de tipo file, archivos (binarios) con el privilegio SUID y no mostrar errores (Lo mismo para el sgid con 2000)