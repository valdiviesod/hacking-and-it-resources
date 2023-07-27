# Expresiones (Por Mi) (1)

“*” → 0 o mas caracteres (Todos los ficheros de un mismo tipo o TODO en general)

Caracter + * + formato → Todo lo que inicia o termina con e caracter dado

caracter + ? + formato → Archivos que inicien o terminen con el caracter y solo haya uno mas despues o antes de ellos

Ejemplo: fichero-1.txt 

```bash
 rm *-?.txt
```

Borra los archivos con cualquier cosa antes de un “-” y un solo caracter despues

caracter + [ ] + formato → Agrega varios y diferentes valores antes o despues del caracter dado

^ → Para negar (Caracteres diferentes a)

Ejemplo: {AB, AC } → Como el corchete pero se pueden complementar caracteres y separar por comas

[Rango] → Ejemplo: [1-7] o [A - Z]