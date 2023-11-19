# Modificar SAM

Area: Windows Hacking

SAM → Security Account Manager (Archivo con los usuarios y contraseñas locales)

UID 500 → Administrador

Windows\System32\config

Herramienta → **chntpw**

Ver chntpw -h para help

Proceso:

```bash
Editar la info → chntpw -i ‘ruta del fichero SAM’
```

Ingresar el nombre del usuario