# Comandos y datos importantes que no conocía

Area: Linux

(Se pueden juntar) Opciones: -r → Recursivo
-i → Interactive → Pregunta antes de ejecutar el comando
-n → Muestra la linea donde se encuentra

“ ” o Barra Invertida Para juntar palabras como nombre de fichero 

grep → Busca patrones en un fichero
/etc/default/grub → Conf basica
/boot/grub/grub.cfg → Script avanzado

curl → Descarga el contenido de la url, sean scripts o html etc…

/bin → contiene comandos y programas de usuario comun (tiene un enlace a /usr)

/dev → contiene dispositivos, discos, etc…

/lost+found → Ficheros corruptos (En caso de perderlos o errores)

/media → mount de discos

/mnt → mount temporal

/opt → contiene cosas no open-source

/proc → info de monitoreo del sistema

/run → almacena datos temporales de algunas apps

/sbin → programas usados por root 

/srv → info de servicios

/sys → informacion del sistema y hardware

/usr → datos y programas del usuario

/var → contiene logs e info de programas 

```bash
find ./ -name "*.txt” 
```

tree → Muestra arbol de ficheros 

```jsx
grep ^a fichero.txt → Ejemplo para buscar todos las palabras que empiecen por a (No hace falta la expresion)
```

```jsx
tail -n +2 → A partir de la linea 2
```

stdin → 0

stdout → 1

stderr → 2

/etc/sudoers

/etc/group

gcc → Compilador de C

gcc prueba.c -o compilado → Compila un programa en un ejecutable en C

&& → AND

comando& → Correr proceso en backgroundn