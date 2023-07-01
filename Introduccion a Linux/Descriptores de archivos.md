- < -> Lectura
- > -> Escritura
- Mayores a 2 son descriptores custom 
*Ej: exec 3<> file* (Crea un archivo llamado file asociado al descriptor 3)
Por ende si ejecuto ***whoami >&3*** la salida se envia al archivo file asociado al descriptor
- **exec 3>&-** -> Matar el descriptor
- **exec 8>&5** -> Asociar un descriptor de archivo a otro
- **exec 6>&5-** -> Asocia el descriptor a otro pero elimina el original
- 
