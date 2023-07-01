- -name 
- -perm -> Por privilegio (ej busqueda por suid: ***find / -perm 4000 2>/dev/null***)
- -group 
- -type f/d -> file/directorio
- -user 
- -writable
- -executable -type f (recomendable buscar por files pues el permiso -x en directorios significa que se puede atravesar)
- -name \*exdum\*.sh -> Uso de wildcards
*Puedo añadir -ls al comando find*