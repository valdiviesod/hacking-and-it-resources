## Configurar interfaces
Router(config)#interface Serial 0/1/0

Router(config-if)#ip address 10.0.0.2 255.0.0.0

Router(config-if)#no shutdown

# Una red
Router(config)#router rip  
Router(config-router)#network 192.168.1.0  
Router(config-router)#network 10.0.0.0

# Dos redes
Router(config)#router rip  
Router(config-router)#network 192.168.2.0  
Router(config-router)#network 10.0.0.0  
Router(config-router)#network 11.0.0.0