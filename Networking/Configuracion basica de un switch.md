1. **Configurar las interfaces de red:**
Switch(config)# interface range GigabitEthernet0/1 - 24
Switch(config-if-range)# switchport mode access
Switch(config-if-range)# switchport access vlan NUMERO-DE-VLAN
Switch(config-if-range)# no shutdown