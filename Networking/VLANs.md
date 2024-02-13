https://ccnadesdecero.es/configuracion-vlan/
https://ccnadesdecero.es/routing-entre-vlan-router-on-a-stick/

- Router(config)#interface gigabitEthernet 0/0/0.10
- Router(config-subif)#encapsulation dot1Q 10 (ID VLAN)
- Router(config-subif)#ip address 192.168.10.1 (Por orden se usa el mismo id de vlan como tercer octeto y el primero de dicha red como 1) 255.255.255.0 

- Switch(config)# vlan 10
- Switch(config-vlan)# name pruebas
- Switch(config-vlan)# interface f0/1
- Switch(config-if)# switchport mode trunk (Va al router)
- Switch(config)#interface fastEthernet 0/2
- Switch(config-if)#switchport mode access 
- Switch(config-if)#switchport access vlan 10
