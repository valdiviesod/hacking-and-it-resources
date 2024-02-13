- IP Virtual que hace de Gateway
# ISP 1
Router(config-if)#interface GigabitEthernet0/0
Router(config-if)#standby 10 ip 8.8.8.1
Router(config-if)#standby 10 priority 150
Router(config-if)#standby 10 preempt

# ISP 2
Router(config-if)#interface GigabitEthernet0/0
Router(config-if)#standby 10 ip 8.8.8.1
*Prioridad 100 por default*
Router(config-if)#standby 10 preempt