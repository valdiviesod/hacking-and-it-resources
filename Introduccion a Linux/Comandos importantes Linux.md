- id -> Ver info del usuario (grupos, etc...)
- which -> Busca el path en las variables de entorno
- command -v -> Reemplazo de which
- bat -> cat bonito
- grep -> filtrado de caracteres (recomendable entre "") (-n para ver la linea donde se encuentra)
- alias cat='bat --paging=never' -> Enlace del comando cat hacia bat sin mostrarlo como 'less'
- $SHELL
- $PATH
- /etc/shells -> Tipos de shells
- ; -> Ejecutar dos comandos por separado en una sola salida sin importar si funciona el anterior
- && -> Si y solo si el comando anterior se ejecuta correctamente (Codigo de estado exitoso 0) 
- echo $? -> Ver codigo de estado del comando anterior (0 si funciona)
- || -> Si el primero no funciona se ejecuta el segundo
- stderr -> Se referencia con el **2** 
*Ej: whoam 2>/dev/null*
- stdout -> La salida comun del comando
- 2>&1 -> Convierte los errores a stdout
*Ej: cat /etc/host > /dev/null > 2>&1 o **cat /etc/host &> /dev/null*** (Sirve para ocultar salidas en scripts, apps, etc.)
- & -> Ejecutar en segundo plano
- disown -> Desligar el proceso a la consola donde me encuentro
- file -> Tipo de archivo
- kill -9 -1 -> Cerrar sesion
- &> -> Envia tanto el stdout como el stderr
- >> -> Redirector con append
- useradd pepe -s /bin/bash -d /home/pepe -> Forma recomendada de crear usuarios
- xargs comando -> Con el output dado, ejecuta el comando que quiera, normalmente se concatena junto al output (which python3.9 | xargs -ls -l)
- ls -a -> Listar archivos ocultos
- find /ruta/de/directorio -name "*whatsapp*" -type f | xargs lsd -l -> Ejemplo de **find** (Añade un plus para listar)
- tail -n 1 -> Ultima linea
- awk 'NR= =2' -> Ultima linea tambien (doble igual pegado)
- awk '{print $2}' -> Mostrar segundo argumento del comando dado
- FS ='/' -> Delimitador
- cut -d '/' -f 1 -> Delimitador pero qudandome con el primer campo
- tr '/' ' ' -> Convertir barras a espacios
- **cat /etc/login.defs | grep "ENCRYPT_METHOD"**
- echo -e -> Interpreta caracteres especiales
- bash -> Para ejecutar scripts sin permisos -x 
- echo $TERM -> Ver terminal
- grep -r "\w" -> Filtrar por palabras
- rev -> Reverse a cadenas
- sshpass -p 'contraseña' ssh comando -> Acceder a ssh con la contraseña ingresada previamente
- makepkg -C -> Eliminar los paquetes del pkgbuild 
- base64 -w 0 -> Ejecuta base64 todo en una misma linea
- xxd -> Ver datos en hexadecimal
- echo "hola" | tee file -> Muestra la salida de un comando y la almacena en un archivo
- sponge -> Sobreescribe mi archivo con la salida que desee 
- echo $? -> Ver codigo de estado del comando previamente ejecutado
- netstat -nat _ Listar puertos
- ss -nltp -> ''
- cat /proc/net/tcp -> ''
- sudo lsof -i:puerto -> Monitorear puerto
- ps PID/Proceso -> Monitorear proceso
- /dev/tcp/IP/Puerto -> Contiene la informacion del puerto que se encuentre abierto 
- & -> Hilo (No espera que se ejecute el anterior para ejecutar el comando siguiente)
- timeout Tiempo -> Tiempo de vida maximo 
- env -> Ver variables de entorno
- !$ -> manipular la entrada anterior
- $((operacion)) -> Para realizar operaciones






