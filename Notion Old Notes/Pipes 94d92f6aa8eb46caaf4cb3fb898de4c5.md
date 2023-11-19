# Pipes

Area: Linux

![Untitled](Learning%20Notion/Pipes%2094d92f6aa8eb46caaf4cb3fb898de4c5/Untitled.png)

“>” → Redirigir a fichero (Salida)

“<” → Entrada

“|” → Pipe  

Ejemplo: apt list | grep alacritty > fichero.txt

cut → Ejemplo: cut -d “ ” -f 3 productos.txt

sed → String editor Ejemplo: sed "s/  */ /g" fichero.txt

```jsx
Ejemplo junto: sed "s/ */ /g" fichero.txt | cut -d " " -f 3,5,9 o 3-6 (Rango)
```

python3 [program.py](http://program.py/) 2> mensajes.txt > salidas.txt < entrada.txt

echo “mensaje” >> mensajes.txt → No sobreescribe sino que agrega