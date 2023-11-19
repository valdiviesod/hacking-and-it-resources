# Configurar router 
Router>en

Router#configure terminal

Router(config)#interface GigabitEthernet 0/0

Router(config-if)#ip address 192.168.1.1 255.255.255.0

Router(config-if)#no shutdown
Router(config)#interface Serial 0/0/0

Router(config-if)#ip address 10.0.0.1 255.0.0.0

Router(config-if)#no shutdown
# Enrutar
Router(config)#ip route 192.168.2.0 (Siguiente Red) 255.255.255.0 10.0.0.2 (Siguiente IP)