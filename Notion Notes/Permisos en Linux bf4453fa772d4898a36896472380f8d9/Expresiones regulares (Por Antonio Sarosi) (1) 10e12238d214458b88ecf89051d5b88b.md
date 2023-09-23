# Expresiones regulares (Por Antonio Sarosi) (1)

- **** Cero o más caracteres, ejemplos:
- todos los archivos: ****
- todos los archivos html: **.html**
- todos los archivos que empiezan por f: **f***

**?** Un único carácter cualquiera, ejemplos:

- todos los archivos txt con un solo carácter: **?.txt**
- todos los txt que empiezan por 'a' seguidos de un carácter: **a?.txt**
- [ ]  **[ ]** Cumple la expresión si contiene uno de los caracteres incluidos, ejemplos:
- Los archivos fA.txt, fB.txt y fC.txt: **f[ABC].txt**

Para invertir la expresión se usa " **^** ", por ejemplo:

- Ficheros txt de nombre f que no acaban en A, B o C: **f[^ABC].txt**

Para especificar rangos, se usa " **-** ":

- Ficheros txt de nombre f que acaban en un dígito: **f[0-9].txt**
- Ficheros txt de nombre f que acaban en dos dígito: **f[0-9][0-9].txt**
- Ficheros txt de nombre f que acaban en una mayúscula: **f[A-Z].txt**
- Los que acaban en una minúscula o mayúscula: **f[a-zA-Z].txt**

**{ }** Igual que el anterior, pero para más caracteres en lugar de uno solo:

Archivos fAB.txt y fDC.txt: **f{AB,DC}.txt**