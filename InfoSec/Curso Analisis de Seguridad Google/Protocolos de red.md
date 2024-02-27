## Descripción general de los protocolos de red

Un **protocolo de red** es un conjunto de reglas utilizadas por dos o más dispositivos de una red para describir el orden de entrega y la estructura de los datos. Los protocolos de red funcionan como instrucciones que vienen junto con la información en el paquete de datos. Estas instrucciones indican al dispositivo receptor qué hacer con los datos. Los protocolos son como un lenguaje común que permite que los dispositivos de todo el mundo se comuniquen entre sí y se entiendan .

Aunque los protocolos de red desempeñan una función esencial en la comunicación de red, las/los analistas de seguridad deben comprender las implicaciones de seguridad asociadas a ellos. Algunos protocolos tienen vulnerabilidades que pueden ser aprovechadas por agentes de amenaza. Por ejemplo, podría utilizar el protocolo del sistema de nombres de dominio (DNS), para desviar el tráfico desde un sitio web legítimo hacia un sitio web malicioso que contiene malware. Obtendrás más información sobre este tema en los materiales del curso que se presentará próximamente.

## Las tres categorías de protocolos de red

Los protocolos de red se pueden dividir en tres categorías principales: protocolos de comunicación, de gestión y de seguridad. Existen decenas de protocolos de red diferentes, pero no es necesario que los memorices todos para desempeñar un puesto de analista de seguridad de nivel inicial. Sí es importante que conozcas aquellos que mencionamos en esta lectura.

### **Protocolos de comunicación**

Los protocolos de comunicación rigen el intercambio de información en la transmisión de redes. Determinan cómo se transmiten los datos entre los dispositivos y el momento de la comunicación. También incluyen métodos para recuperar datos perdidos durante el trayecto. A continuación, se presentan algunos de ellos.

- El **protocolo de control de transmisión (TCP)** es un protocolo de comunicación de Internet que permite a dos dispositivos establecer una conexión y transmitir datos. El TCP utiliza un proceso de tres pasos. Primero, el dispositivo envía una solicitud de sincronización (SYN) a un servidor. Luego, el servidor responde con un paquete SYN/ACK para confirmar la recepción de la solicitud del dispositivo. Una vez que el servidor recibe el paquete ACK final desde el dispositivo, se establece una conexión TCP. En el modelo TCP/IP, el TCP se encuentra en la capa de transporte.
    
- El **protocolo de datagramas de usuario (UDP)** es un protocolo sin conexión que no establece un enlace entre dispositivos antes de la transmisión. Esto lo hace menos confiable que el TCP, pero también lo hace adecuado para transmisiones que requieren llegar rápidamente a su destino. Un ejemplo de uso de UDP se da en las transmisiones de juegos en línea. En el modelo TCP/IP, el UDP se encuentra en la capa de transporte.
    
- El **protocolo de transferencia de hipertexto (HTTP)** es un protocolo de capa de aplicación que proporciona un método de comunicación entre clientes y servidores de sitios web. El HTTP usa el puerto 80 y se considera inseguro. Aunque aún algunos sitios web lo utilizan, en muchos otros está siendo reemplazado por una versión segura, llamada HTTPS. En el modelo TCP/IP, el HTTP se encuentra en la capa de aplicación.
    
- El **sistema de nombres de dominio (DNS)** es un protocolo que traduce los nombres de dominio de Internet como direcciones IP. Cuando un equipo del cliente desea acceder a un dominio de sitio web utilizando su navegador de Internet, se envía una consulta a un servidor DNS dedicado. El servidor DNS luego busca la dirección IP que corresponde al dominio del sitio web. El DNS suele usar un protocolo de datagramas de usuario (UDP) en el puerto 53. Sin embargo, si la respuesta del DNS a una solicitud es grande, se pasará al protocolo TCP. En el modelo TCP/IP, el DNS se encuentra en la capa de aplicación.
    

### **Protocolos de gestión**

La siguiente categoría es la de los protocolos de gestión. Estos se utilizan para monitorear y administrar la actividad en una red. Incluyen protocolos para notificar errores y optimizar el rendimiento en la red.

- El **protocolo simple de administración de red (SNMP)** es un protocolo de red utilizado para monitorear y gestionar los dispositivos en una red. El SNMP puede restablecer una contraseña en un dispositivo de red o cambiar su configuración básica. También puede enviar solicitudes a los dispositivos de red para obtener un informe sobre cuánto ancho de banda de la red está siendo utilizado. En el modelo TCP/IP, el SNMP se encuentra en la capa de aplicación.
    
- El **protocolo de mensajes de control de Internet (ICMP)** es un protocolo de Internet utilizado por los dispositivos para informarse mutuamente sobre errores de transmisión de datos en la red. El ICMP es utilizado por un dispositivo receptor para enviar un informe al dispositivo emisor sobre la transmisión de datos. Suele usarse como una forma rápida de solucionar problemas de conectividad y el tiempo de respuesta (o latencia) de la red mediante la emisión del comando “ping” en un sistema operativo Linux. En el modelo TCP/IP, el ICMP se encuentra en la capa de Internet.
    

### **Protocolos de seguridad**

Los protocolos de seguridad garantizan que los datos se envíen y reciban de forma segura a través de una red. Estos utilizan algoritmos de cifrado para proteger los datos durante su transmisión. A continuación, se presentan algunos de los protocolos de seguridad más comunes.

- El **protocolo seguro de transferencia de hipertexto (HTTPS)** es un protocolo de red que proporciona un método de comunicación seguro entre clientes y servidores de sitios web. El HTTPS es una versión segura del HTTP que utiliza cifrado de capa de conexión segura/seguridad en la capa de transporte (SSL/TLS) en todas las transmisiones para que los/as agentes de amenaza no puedan leer la información. El HTTPS utiliza el puerto 443. En el modelo TCP/IP, el HTTPS se encuentra en la capa de aplicación.
    
- El **protocolo seguro de transferencia de archivos (SFTP)** es un protocolo seguro utilizado para transferir archivos de un dispositivo a otro a través de una red. El SFTP utiliza el protocolo Secure Shell (SSH), en general, a través del puerto TCP 22. El SSH utiliza un estándar de cifrado avanzado (Advanced Encryption Standard, AES) y otros tipos de encriptación para asegurar que destinatarios no deseados no puedan interceptar las transmisiones. En el modelo TCP/IP, el SFTP se encuentra en la capa de aplicación. El SFTP suele utilizarse con almacenamiento en la nube. Cada vez que un/a usuario/a carga o descarga un archivo desde el almacenamiento en la nube, el documento se transfiere utilizando el protocolo SFTP.
    

**Nota:** Los protocolos de cifrado mencionados no ocultan la dirección IP de origen o el destino del tráfico de red. Esto significa que, si lo intercepta, un/a agente de amenaza aún puede obtener cierta información básica sobre el tráfico de red.
## Traducción de direcciones de red

Los dispositivos en tu red doméstica u oficina local tienen cada uno una dirección IP privada que utilizan para comunicarse entre sí. Para que los dispositivos con direcciones IP privadas puedan comunicarse con Internet pública, necesitan tener una dirección IP pública. De lo contrario, las respuestas no se enrutarán correctamente. En lugar de tener una dirección IP pública dedicada para cada uno de los dispositivos en la red local, el enrutador puede reemplazar la dirección IP de origen privado con su dirección IP pública y realizar la operación inversa para las respuestas. Este proceso se conoce como traducción de direcciones de red (NAT) y generalmente requiere que el enrutador o cortafuegos (firewall) se configuren específicamente para tal fin. La NAT es parte de la capa 2 (capa de Internet) y la capa 3 (capa de transporte) del modelo TCP/IP.

|**Direcciones IP privadas**|**Direcciones IP públicas**|
|---|---|
|- Las asignan los administradores de red<br>    <br>- Son únicas solo dentro de la red privada<br>    <br>- No tienen costo de uso<br>    <br>- Rangos de direcciones:<br>    <br>    - 10.0.0.0-10.255.255.255<br>        <br>    - 172.16.0.0-172.31.255.255<br>        <br>    - 192.168.0.0-192.168.255.255|- Las asignan el IANA y el ISP<br>    <br>- Las direcciones son únicas en Internet a nivel mundial<br>    <br>- Alquilar una dirección IP pública tiene costo<br>    <br>- Rangos de direcciones:<br>    <br>    - 1.0.0.0-9.255.255.255<br>        <br>    - 11.0.0.0-126.255.255.255<br>        <br>    - 128.0.0.0-172.15.255.255<br>        <br>    - 172.32.0.0-192.167.255.255<br>        <br>    - 192.169.0.0-233.255.255.255|

## Protocolo de configuración dinámica de host

El protocolo de configuración dinámica de host (DHCP) pertenece a la familia de los protocolos de gestión de redes. El DHCP es un protocolo de capa de aplicación utilizado en una red para configurar dispositivos. Asigna una dirección IP única y proporciona las direcciones del servidor DNS adecuado y la puerta de enlace predeterminada para cada dispositivo. Los servidores DHCP operan en el puerto UDP 67, mientras que los clientes DHCP operan en el puerto UDP 68.

## Protocolo de resolución de direcciones

Para este momento, ya debes saber bastante acerca de las direcciones IP y las de control de acceso al medio (MAC). Has aprendido que cada dispositivo tiene una dirección IP que lo identifica en la red y una dirección MAC que es única para esa interfaz de red. La dirección IP de un dispositivo puede cambiar con el tiempo, pero su dirección MAC permanece. El protocolo de resolución de direcciones (ARP) es un protocolo de la capa de Internet en el modelo TCP/IP que se utiliza para traducir las direcciones IP que se encuentran en los paquetes de datos, en la dirección MAC del dispositivo de hardware. 

Cada dispositivo en la red ejecuta el ARP y realiza un seguimiento de las direcciones IP y MAC coincidentes en un caché ARP. El ARP no tiene un número de puerto específico.

## Telnet 

Telnet es un protocolo de capa de aplicación que permite que un dispositivo se comunique con otro equipo o servidor. Telnet envía toda la información en texto claro. Si bien utiliza indicadores de línea de comando para controlar otro dispositivo similar al protocolo Secure Shell  (SSH), no es tan seguro como el SSH. Telnet se puede usar para conectarse a dispositivos locales o remotos y utiliza el puerto TCP 23.

## Protocolo Secure Shell (SSH)

El protocolo Secure Shell (SSH) se utiliza para crear una conexión segura con un sistema remoto. Este protocolo de capa de aplicación proporciona una alternativa para la autenticación segura y la comunicación cifrada. El SSH opera sobre el puerto TCP 22 y es un reemplazo para protocolos menos seguros, como Telnet.

## Protocolo de oficina postal

El protocolo de oficina postal (POP, por Post Office Protocol) es un protocolo de capa de aplicación (capa 4 en el modelo TCP/IP) que se utiliza para gestionar y recuperar correos electrónicos de un servidor de correo. Muchas organizaciones tienen un servidor de correo dedicado que maneja el correo entrante y saliente para los/as usuarios/as en la red. Los dispositivos de usuario envían solicitudes al servidor y descargan mensajes de correo electrónico de forma local. Si alguna vez has actualizado tu aplicación de correo electrónico y has visto nuevos correos electrónicos aparecer en tu bandeja de entrada, estás experimentando el POP y el protocolo de acceso a mensajes de Internet (IMAP). La autenticación de texto no encriptada utiliza el puerto TCP/UDP 110, mientras que los correos electrónicos cifrados utilizan capa de conexión segura/seguridad en la capa de transporte (SSL/TLS) sobre el puerto TCP/UDP 995. Al usar el POP, el correo debe terminar de descargarse en un dispositivo local antes de poder leerse. Además, no permite que un/a usuario/a sincronice los correos electrónicos.

## Protocolo de acceso a mensajes de Internet (IMAP)

El protocolo de acceso a mensajes de Internet (IMAP) se utiliza para correos electrónicos entrantes. Descarga sus encabezados, pero no el contenido, que permanece en el servidor, posibilitando a los/as usuarios/as acceder a su correo electrónico desde diferentes dispositivos. El IMAP utiliza el puerto TCP 143 para correos electrónicos no encriptados y el puerto TCP 993 con el protocolo TLS. El uso del IMAP permite a las personas leer parcialmente los correos electrónicos antes de que se terminen de descargar y sincronizarlos. Sin embargo, el IMAP es más lento que el POP3.

## Protocolo para transferencia simple de correo (SMTP)

El protocolo para transferencia simple de correo (SMTP) se utiliza para transmitir y enrutar correos electrónicos desde el remitente hasta la dirección del/de la destinatario/a. El SMTP funciona con el software Message Transfer Agent (MTA), que consulta los servidores de sistema de nombres de dominio (DNS) para obtener las direcciones IP correspondientes a las direcciones de correo electrónico, asegurando que estos lleguen al destino previsto. El SMTP usa el puerto TCP/UDP 25 para correos electrónicos no cifrados y el puerto TCP/UDP 587 utiliza TLS para los cifrados. Con cierta frecuencia, el puerto TCP 25 se usa para el spam de alto volumen. El SMTP ayuda a filtrar el spam regulando la cantidad de correos electrónicos que una fuente puede enviar al mismo tiempo.

## Protocolos y números de puerto

Recuerda que los números de puerto son utilizados por los dispositivos de red para determinar qué se debe hacer con la información contenida en cada paquete de datos una vez que lleguen a su destino. Los cortafuegos (firewalls) pueden filtrar el tráfico no deseado, basándose en los números de puerto. Por ejemplo, una empresa puede configurar un cortafuegos para permitir solo el acceso al puerto TCP 995 (POP3) a través de direcciones IP que pertenecen a la organización.

Como analista de seguridad, necesitarás conocer muchos de los protocolos y los números de puerto mencionados en este curso. Es posible que te pregunten por estos durante una entrevista laboral para evaluar tus conocimientos técnicos, así que es una buena idea memorizarlos. También aprenderás sobre nuevos protocolos mientras te desempeñas en una posición de seguridad.

## Conclusiones clave

Como analista de ciberseguridad, te encontrarás con varios protocolos comunes en tu trabajo diario. Los protocolos abordados en esta lectura son los siguientes: NAT, DHCP, ARP, Telnet, SSH, POP3, IMAP y SMTP. Es igualmente importante comprender dónde se ubica cada protocolo en el modelo TCP/IP y qué puertos ocupa.

|**Protocolo**|**Puerto**|
|---|---|
|DHCP|Puerto UDP 67 (servidores)<br><br>Puerto UDP 68 (clientes)|
|ARP|Ninguno|
|Telnet|Puerto TCP 23|
|SSH|Puerto TCP 22|
|POP3|Puerto TCP/UDP 110 (sin cifrar)<br><br>Puerto TCP/UDP 995 (cifrado, SSL/TSL)|
|IMAP|Puerto TCP 143 (sin cifrar)<br><br>Puerto TCP 993 (cifrado, SSL/TSL)|
|SMTP|Puerto TCP/UDP 25 (admite cifrado TSL)<br><br>Puerto TCP/UDP 587 (cifrado, TSL)|