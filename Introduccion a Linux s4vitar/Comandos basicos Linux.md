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
- && -> Si y solo si el comando anterior se ejecuta correctamente
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
- find /ruta/de/directorio -name "*whatsapp*" -type f -> Ejemplo de **find**
- 





