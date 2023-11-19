# Hacking BIOS y UEFI

Area: Hacking Basics

## BIOS (MBR) vs UEFI (GPT)

Particiones primarias → 4 vs 128

Tamaño LBA → 32 bits vs 64 bits

Tamaño Particion → 2.2 TB vs 9.4 ZB

### Proceso de arranque de la Bios

![Untitled](Learning%20Notion/Hacking%20BIOS%20y%20UEFI%20786e059315564637afcb19f07a4990ce/Untitled.png)

### Arranque UEFI

![Untitled](Learning%20Notion/Hacking%20BIOS%20y%20UEFI%20786e059315564637afcb19f07a4990ce/Untitled%201.png)

- SEC → Comprueba el estado de los componentes a traves del firmware
- EFI → Inicia los componentes comprobados anteriormente
- DXE → Comprueba los drivers y sus firmas
- BDS → Inicia los dispositivos, carga los drivers y carga el GPT o MBR.
- Secure boot → Valida certificados x509 para validar el bootloader y cargar el SO, almacena claves en bases de datos: DB, DBX, KEK o PK.

### Ataques a la BIOS

**Por Hardware:.** 

![Untitled](Learning%20Notion/Hacking%20BIOS%20y%20UEFI%20786e059315564637afcb19f07a4990ce/Untitled%202.png)

**Software:**

CmosPwd / killCmos

[bios-pw.org](http://bios-pw.org) → Intruducir tres veces mal la clave e ingresar el error

## Ataques UEFI

Chipsec → github