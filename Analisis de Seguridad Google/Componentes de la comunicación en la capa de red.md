## Operaciones en la capa de red

Las funciones en la capa de red organizan la dirección y la entrega de paquetes de datos a través de la red e Internet desde el dispositivo host hasta el de destino. Esto incluye dirigir los paquetes de un enrutador a otro a través de Internet, basándose en la dirección del protocolo de Internet (IP) de la red de destino. La dirección IP de destino se encuentra dentro del encabezado de cada paquete de datos. Esta dirección se almacenará en tablas de enrutamiento a lo largo del camino del paquete hacia su destino, para futuros propósitos de enrutamiento.

Todos los paquetes de datos incluyen una dirección IP; esto se denomina paquete IP o datagrama. Un router utiliza la dirección IP para enrutar paquetes de una red a otra, basándose en la información contenida en el encabezado IP de un paquete de datos. La información del encabezado no comunica solo la dirección del destino. También incluye información, como la dirección IP de origen, el tamaño del paquete y qué protocolo se utilizará para el área de datos del paquete. 

## Formato de un paquete IPv4

![Paquete IP dividido en dos secciones: una marcada como “encabezado” (header) y otra a la derecha marcada como “datos” (data)](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/z7Yc9i-kQKyPD3OhKKKgAg_78809df32abb4ab6ab927e334ff571f1_LhFr3tzqARqL5jEJi4RI9guarOrU7e0ZoyJp6rQIuHQZV_Ak16CzNaGqDwzhiLQuG0orEYx0kZh68a7wDysjW9bd84TpHs_GggzkCHU74LehmZqEkrhxc0Si7DzraSw3tXsw62e2UxghocZSV9Musw?expiry=1702425600000&hmac=X4X8MN9_Ubz_8TNW0CzB_YeELaWI7gxD_KXjIN8r6Og)

A continuación, puedes ver el formato de un paquete IP versión 4 (IPv4) y un gráfico que detalla el encabezado del paquete. Un paquete IPv4 se compone de dos secciones, el encabezado y los datos:

- El tamaño del encabezado IP oscila entre 20 y 60 bytes. Incluye la información de enrutamiento IP que los dispositivos utilizan para dirigir el paquete. El formato de un encabezado de paquete IP está determinado por el protocolo IPv4.
    
- La longitud de la sección de datos de un paquete IPv4 puede variar mucho, pero el tamaño máximo posible de un paquete IP es 65.536 bytes. Contiene el mensaje que se transfiere a la transmisión, como la información del sitio web o el texto del correo electrónico.
    

![Diagrama de un.encabezado de paquete IPv4, 13 campos y tamaño de bit.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/VZ4n_9m9RU2yRAmjRbGZsA_4e36b99d71b44e34a5ea6c0282696df1__wlDB6PENhlQfROvduzcfwvIb3bnymuwKYOVx-xzGd6DJvsuGCAMNhdwLK3y7aw6uOvkncRbBbcRBVWC93GVtGWh-6BSUI1OdXo9yQsurEsX6UQvV-Y3f-KJYyj7u5PkieqLTWoiBjHbXYQsA_7MGQ?expiry=1702425600000&hmac=qHzhCMXIhRZUUrDBsOC6drV7UiswBWpTAywIL8Hx36A)

Hay 13 campos dentro del encabezado de un paquete IPv4:

- **Versión:** el primer encabezado de 4 bits indica a los dispositivos receptores qué protocolo está utilizando el paquete. El paquete utilizado en la ilustración anterior es un paquete IPv4.
    
- **Longitud del encabezado IP (HLEN):** HLEN es la longitud del encabezado del paquete. Este valor indica dónde termina el encabezado del paquete y comienza el segmento de datos. 
    
- **Tipo de servicio (ToS):** los routers priorizan los paquetes a entregar con el fin de mantener la calidad del servicio en la red. El campo ToS proporciona esta información al router.
    
- **Longitud total:** este campo comunica la longitud total de todo el paquete IP, incluidos el encabezado y los datos. El tamaño máximo de un paquete IPv4 es de 65.535 bytes.
    
- **Identificación:** si el paquete IPv4 es superior a 65 535 bytes, se divide o fragmenta en paquetes IP más pequeños. El campo de identificación proporciona un identificador único para todos los fragmentos del paquete IP original para que puedan volver a ensamblarse cuando lleguen a su destino. 
    
- **Indicadores:** este campo proporciona al dispositivo de enrutamiento más información sobre si el paquete original se fragmentó y si hay más fragmentos en tránsito.
    
- **Desplazamiento de fragmentación:** el campo de desplazamiento de fragmento indica a los dispositivos de enrutamiento a qué parte del paquete original pertenece el fragmento.
    
- **Período de vida (TTL):** evita que los routers reenvíen los paquetes de datos de manera indefinida. Contiene un contador que determina la fuente. El contador disminuye de a uno, a medida que pasa por cada router. Cuando el contador TTL llega a cero, el router descartará el paquete y enviará al emisor un mensaje de tiempo superado ICMP. 
    
- **Protocolo:** este campo indica al dispositivo receptor qué protocolo se utilizará para el área de datos del paquete.
    
- **Suma de comprobación del encabezado:** este campo contiene una suma de comprobación que se puede usar para detectar si la cabecera IP en tránsito está dañada. Los paquetes dañados se descartan.
    
- **Dirección IP de origen:** es la dirección IPv4 del dispositivo emisor.
    
- **Dirección IP de destino:** es la dirección IPv4 del dispositivo receptor.
    
- **Opciones:** este campo permite aplicar opciones de seguridad al paquete si el valor HLEN es mayor que cinco. Además, comunica estas alternativas a los dispositivos de enrutamiento.
    

## Diferencia entre IPv4 e IPv6

En una parte anterior de este curso, aprendiste sobre la historia de las direcciones IP. Con el crecimiento de Internet, se hizo evidente que todas las direcciones IPv4 se consumirían en algún momento, lo que se conoce como el agotamiento de direcciones IPv4. En ese momento, nadie había anticipado la cantidad de dispositivos informáticos que necesitarían una dirección IP en el futuro. En respuesta a esta problemática, se desarrolló IPv6, con el fin de mitigar el agotamiento de direcciones IPv4 y abordar otras preocupaciones relacionadas con esto. 

Una de las principales diferencias entre IPv4 e IPv6 es la longitud de las direcciones. Las direcciones IPv4 son numéricas, están compuestas por 4 bytes y admiten hasta 4300 millones de direcciones posibles. Un ejemplo sería: 198.51.100.0. En cambio, las direcciones IPv6 son hexadecimales, están compuestas por 16 bytes y permiten hasta 340 undecillones de direcciones (la cifra 340 seguida de 36 ceros). Un ejemplo de una dirección IPv6 sería: 2002:0db8:0000:0000:0000:ff21:0023:1234.

También hay algunas diferencias en el diseño del encabezado de un paquete IPv6. El formato del IPv6 es mucho más simple que el del IPv4. Por ejemplo, el encabezado de IPv4 incluye los campos HLEN, identificación e indicadores, mientras que el IPv6 no lo hace. El encabezado de IPv6 tiene otros campos que no están incluidos en IPv4, como etiqueta de flujo y clase de tráfico.

![Diagramas paralelos de un encabezado de paquete IPv4 y uno de IPv6 simplificado.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/NapUQGvxQUuC83hz564pMQ_704cd1c84ca74a179e7bd31ebc8ef0f1_PHKKx5gQ5nm028y2vOcDKK0DHGK3Ub9HcxkPBEG0Ny4TVxZhuuj9yxFP7h1O978xKQrYafaIS8dankq3HgoyKAayZ9eeYUa5Rc57TV2xAJhXf2Bs0YWwJJm7MORKpcX-e9Rgs0uXfj6JUoU6e7dr3Q?expiry=1702425600000&hmac=tv8NQLqREEuCBM9gPddBOXMIkWRhzr3_ETTIvtCREX0)

Hay algunas diferencias de seguridad importantes entre IPv4 e IPv6. IPv6 ofrece un enrutamiento más eficiente y elimina las colisiones de direcciones privadas que pueden ocurrir en IPv4 cuando dos dispositivos de la misma red intentan usar la misma dirección.