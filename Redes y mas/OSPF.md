[Configuración de OSPF con adyacencia multiárea - Cisco](https://www.cisco.com/c/es_mx/support/docs/ip/open-shortest-path-first-ospf/118879-configure-ospf-00.html)
*Loopback*: Permite a los programas y servicios en el dispositivo comunicarse con la red sin depender de la conectividad física. La configuración de una interfaz de loopback es comúnmente utilizada para proporcionar una dirección IP de referencia y estable para servicios internos, como servidores DNS o servicios web locales, mejorando la estabilidad y la consistencia de la red.
# Configuracion Basica
*En el ejemplo el sistema requiere que el tráfico del router 5 (R5) a R1 (10.1.1.1) siempre pase por R3. Suponga que R3 es un firewall en la red a través del cual se puede rutear todo el tráfico, o que el link entre R3 y R4 tiene más ancho de banda que el link entre R2 y R4. En cualquier caso, el sistema exige que el tráfico atraviese R3 cuando pasa de R5 a R1 (prefijo 10.1.1.1/32).*
#### Configuración R1

Router(config)#interface Loopback0  

Router(config-if)#no shutdown

Router(config-if)#ip address 10.1.1.1 255.255.255.255

Router(config)#interface Serial 0/1/0

Router(config-if)#ip address 192.168.12.1 255.255.255.0

Router(config-if)#no shutdown

Router(config)#ip route 0.0.0.0 0.0.0.0 192.168.12.2


#### Configuración R2

interface Ethernet0/0  
 ip address 192.168.12.2 255.255.255.0  
!  
interface Ethernet0/1  
 ip address 192.168.23.2 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 0  
!  
interface Ethernet0/2  
 ip address 192.168.24.2 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Loopback0  
 ip address 10.2.2.2 255.255.255.255  
!  
ip route 10.1.1.1 255.255.255.255 192.168.12.1  
!  
router ospf 1  
 router-id 0.0.0.2  
 redistribute static metric-type 1 subnets

#### Configuración R3

interface Ethernet0/0  
 ip address 192.168.34.3 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Ethernet0/1  
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

interface Ethernet0/0  
 ip address 192.168.34.4 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Ethernet0/1  
 ip address 192.168.45.4 255.255.255.0  
 ip ospf network point-to-point  
 ip ospf 1 area 99  
!  
interface Ethernet0/2  
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