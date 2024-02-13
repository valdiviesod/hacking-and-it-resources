- Configurar WAN con la IP que se brinde
- Configurar LAN
- Configurar NAT
Ej: 
`Router(config)# ip nat inside source list 1 interface GigabitEthernet0/0 overload Router(config)# access-list 1 permit 192.168.1.0 0.0.0.255`
- Enrutar 
- Configurar DHCP
- 