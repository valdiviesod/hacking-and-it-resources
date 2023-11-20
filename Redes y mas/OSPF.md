*Loopback*: Permite a los programas y servicios en el dispositivo comunicarse con la red sin depender de la conectividad física. La configuración de una interfaz de loopback es comúnmente utilizada para proporcionar una dirección IP de referencia y estable para servicios internos, como servidores DNS o servicios web locales, mejorando la estabilidad y la consistencia de la red.
# Configuracion Basica
*En el ejemplo el sistema requiere que el tráfico del router 5 (R5) a R1 (10.1.1.1) siempre pase por R3. Suponga que R3 es un firewall en la red a través del cual se puede rutear todo el tráfico, o que el link entre R3 y R4 tiene más ancho de banda que el link entre R2 y R4. En cualquier caso, el sistema exige que el tráfico atraviese R3 cuando pasa de R5 a R1 (prefijo 10.1.1.1/32).*
*En la configuración de OSPF que se presenta, se utiliza el concepto de áreas en OSPF para organizar la red y mejorar la escalabilidad del protocolo. En OSPF, el área 0 (también conocida como backbone area) es fundamental y debe existir en cualquier despliegue de OSPF. Es el área central a la cual todas las demás áreas deben estar conectadas. El área 0 se utiliza para intercambiar información de enrutamiento entre diferentes áreas.

En este caso, se ha configurado el Área 0 (backbone) y el Área 99. El Área 0 es esencial y debe estar presente para permitir la conectividad entre todas las áreas en OSPF. La elección de utilizar el Área 99 para la otra área es una decisión de diseño de red. Las áreas adicionales se utilizan para dividir la red en segmentos lógicos más pequeños, reduciendo la carga de procesamiento en los routers y mejorando la eficiencia del enrutamiento.*

# Tipos de network 
1. **Broadcast:** Se utiliza para redes Ethernet.
2. **Point-to-Point:** Se utiliza para conexiones punto a punto, como enlaces seriales.
3. **Non-Broadcast Multi-Access (NBMA):** Se utiliza para redes donde no se puede realizar difusión, como Frame Relay.
4. **Point-to-Multipoint:** Se utiliza para redes punto a multipunto.
## Ejemplo Cisco
[Configuración de OSPF con adyacencia multiárea - Cisco](https://www.cisco.com/c/es_mx/support/docs/ip/open-shortest-path-first-ospf/118879-configure-ospf-00.html)
#### Configuración R1

Router(config)#interface Loopback0  

Router(config-if)#no shutdown

Router(config-if)#ip address 10.1.1.1 255.255.255.255

Router(config)#interface Serial 0/1/0

Router(config-if)#ip address 192.168.12.1 255.255.255.0

Router(config-if)#no shutdown

Router(config)#ip route 0.0.0.0 0.0.0.0 192.168.12.2 (Ruta predeterminada)


#### Configuración R2

interface Serial0/1/0  
 ip address 192.168.12.2 255.255.255.0  
!  
interface Serial0/1/1
 ip address 192.168.23.2 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 0  
!  
interface Serial0/0/0
 ip address 192.168.24.2 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Loopback0  
 ip address 10.2.2.2 255.255.255.255  
!  
ip route 10.1.1.1 255.255.255.255 192.168.12.1  
!  
router ospf 1  (ID del proceso)
 router-id 0.0.0.2  (Opcional)
 redistribute static metric-type 1 subnets (La métrica tipo 1 toma en cuenta solo el costo de los enlaces internos OSPF (rutas mas cortas), mientras que la métrica tipo 2 también incluye el costo de los enlaces externos (Simplificar el cálculo de costo))

#### Configuración R3

interface S0/1/1  
 ip address 192.168.34.3 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Serial0/1/0
 ip address 192.168.23.3 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 0  
!  
interface Loopback0  
 ip address 10.3.3.3 255.255.255.255  
!  
router ospf 1  
 router-id 0.0.0.3

#### Configuración R4

interface S0/1/0  
 ip address 192.168.34.4 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Ethernet0/1  
 ip address 192.168.45.4 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface S0/0/0  
 ip address 192.168.24.4 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Loopback0  
 ip address 10.4.4.4 255.255.255.255  
!  
router ospf 1  
 router-id 0.0.0.4

#### Configuración R5

interface Ethernet0/1  
 ip address 192.168.45.5 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Loopback0  
 ip address 10.5.5.5 255.255.255.255  
!  
router ospf 1  
 router-id 0.0.0.5

## Basico
https://www.raulprietofernandez.net/blog/packet-tracer/enrutamiento-dinamico-ospf-con-packet-tracer
