-  **apt install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev**

Posteriormente, aplicaremos una actualización del sistema con el comando ‘**apt update**‘. Acto seguido, tenéis que dirigiros a la carpeta de descargas de vuestro equipo y descargar los proyectos ‘**bswpm**‘ y ‘**sxhkd**‘ con los siguientes comandos:

- **git clone https://github.com/baskerville/bspwm.git**
- **git clone https://github.com/baskerville/sxhkd.git**

Para instalar cada uno de estos, lo que debéis hacer es meteros en ambos directorios por separado y ejecutar los comandos ‘**make**‘ y ‘**sudo make install**‘.

En caso de que os salga algún error relacionado con ‘**xinerama**‘, podéis ejecutar este comando:

- **sudo apt install libxinerama1 libxinerama-dev**

Finalmente, instalaremos ‘**bspwm**‘ con el comando ‘**sudo apt install bspwm**‘. Este es un paso que se me olvida aplicar en esta clase, pero aún así lo hacemos más adelante. Mi recomendación es que lo hagáis ya para evitar problemas futuros.

¡Recordad que está prohibido hacer un ‘**apt upgrade**‘!
- **parrot-upgrade** es esencial
Por aquí os comparto el primer comando que introducimos al empezar la clase, necesario para instalar una serie de dependencias previas a la instalación de la Polybar:

- **apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libuv1-dev libnl-genl-3-dev**

**IMPORTANTE**: En caso de que os de problemas el paquete ‘**python3-sphinx**‘, simplemente quitadlo del comando anterior. Primero probadlo con el paquete ‘**python3-sphinx**‘ incluido, quitadlo sólo si os da problemas.

Posteriormente, debéis clonar en vuestra carpeta de descargas el repositorio de la polybar:

- **git clone –recursive https://github.com/polybar/polybar** [Son 2 guiones donde pone ‘**recursive**‘]

Una vez hecho, os tenéis que meter en la carpeta creada resultante de haber clonado previamente el repositorio y ejecutar los siguientes comandos:

- **mkdir build**
- **cd build**
- **cmake ..**
- **make -j$(nproc)**
- **sudo make install**

Recordad que otra forma de instalar la polybar de manera más sencilla, es haciendo un ‘**apt install polybar**‘, pero recomendamos esta forma que mostramos con el objetivo de asegurar que la Polybar esté en su última versión.

Con esto, ¡ya deberíais tener la polybar instalada!
Por aquí tenéis todo el comando necesario a ejecutar para instalar ciertas dependencias previas:

- **apt install meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev**


Posteriormente, os descargáis el picom a través del siguiente comando ejecutado en la carpeta de descargas:

- **git clone https://github.com/ibhagwan/picom.git**

Una vez hecho, nos metemos en el directorio creado y ejecutamos los siguientes comandos:

- **git submodule update –init –recursive** [Son 2 guiones donde pone ‘**init**‘ y ‘**recursive**‘]
- **meson –buildtype=release . build** [Son 2 guiones donde pone ‘**buildtype**‘] 
- **ninja -C build**
- **sudo ninja -C build install**

En esta clase también hemos instalado ‘**rofi**‘, lo hemos hecho mediante la ejecución del siguiente comando:

- **apt install rofi**

Con esto hecho, ya migramos a nuestro entorno ‘**bspwm**‘ y verificamos que todos los atajos estén funcionando correctamente.
Por aquí tienes el archivo ‘**color.ini**‘ para la Kitty:

- [https://hack4u.io/wp-content/uploads/2022/09/color.ini_.txt](https://hack4u.io/wp-content/uploads/2022/09/color.ini_.txt)

Por aquí tienes el archivo de configuración ‘**kitty.conf**‘ para la Kitty:

- [https://hack4u.io/wp-content/uploads/2022/09/kitty.conf_.txt](https://hack4u.io/wp-content/uploads/2022/09/kitty.conf_.txt)

Os compartimos por aquí el código correspondiente al sistema de autocompletado moderno que vemos en el minuto 22:37, el cual podéis introducir en vuestro archivo ‘**.zshrc**‘:

- [https://pastebin.com/H87J3nMj](https://pastebin.com/H87J3nMj)
Os compartimos por aquí los aliases que tenéis que definir en el archivo ‘**.zshrc**‘, para que los tengáis más accesibles:

- [https://pastebin.com/QGvVx3wG](https://pastebin.com/QGvVx3wG)

¿Estás teniendo problemas con el ‘**LS_COLORS**‘ y estás viendo que esta variable de entorno no te devuelve ningún contenido?, no te preocupes, te adjuntamos por aquí la línea que debes definir en el archivo ‘**zshrc**‘:

- [https://pastes.io/xsqk9oi1hz](https://pastes.io/xsqk9oi1hz)
Os compartimos a continuación los scripts correspondientes a los 2 módulos creados para representar la dirección IP de la interfaz ‘**ens33**‘ y la ‘**tun0**‘ correspondiente a la VPN:

- [https://pastebin.com/HcKxU3tD](https://pastebin.com/HcKxU3tD) [**ethernet_status.sh**]
- [https://pastebin.com/sUk5hB4Q](https://pastebin.com/sUk5hB4Q) [**vpn_status.sh**]

Recordad que en caso de que vuestro nombre de interfaz sea otro, tenéis que adaptarlo en el script. Asimismo, donde pone ‘**ICONO**‘, debéis sustituirlo por vuestro icono deseado de Nerd Fonts.
Os compartimos a continuación los scripts correspondientes a los 2 módulos creados para representar la dirección IP de la interfaz ‘**ens33**‘ y la ‘**tun0**‘ correspondiente a la VPN:

- [https://pastebin.com/HcKxU3tD](https://pastebin.com/HcKxU3tD) [**ethernet_status.sh**]
- [https://pastebin.com/sUk5hB4Q](https://pastebin.com/sUk5hB4Q) [**vpn_status.sh**]

Recordad que en caso de que vuestro nombre de interfaz sea otro, tenéis que adaptarlo en el script. Asimismo, donde pone ‘**ICONO**‘, debéis sustituirlo por vuestro icono deseado de Nerd Fonts.
Por aquí os comparto el script ‘**target_to_hack.sh**‘:

- [https://pastebin.com/Z0s6zy7W](https://pastebin.com/Z0s6zy7W)

Asimismo, os comparto las funciones ‘**settarget**‘ y ‘**cleartarget**‘ las cuales debéis incorporar en tu archivo ‘**.zshrc**‘:

- [https://pastebin.com/z0Hy7PUB](https://pastebin.com/z0Hy7PUB) [**settarget**]
- [https://pastebin.com/JnHSrq3Y](https://pastebin.com/JnHSrq3Y) [**cleartarget**]

Recordad que por defecto estas definiciones vienen con la ruta ‘**s4vitar**‘ contemplada, en vuestro caso tendréis que cambiarlo a vuestro usuario correspondiente.

Por otro lado, en el archivo ‘**target_to_hack.sh**‘, cambiad ‘**ICONO**‘ a vuestro icono deseado de Nerd Fonts.
# Automatizacion 
[autoBspwm | Yorkox](https://yorkox0.github.io/autoBspwm/#)
