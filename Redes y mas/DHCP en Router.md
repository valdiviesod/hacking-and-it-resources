Router(config)#ip dhcp pool nombrepool

Router(dhcp-config)#network 192.168.0.0 255.255.255.0

Router(dhcp-config)#default-router 192.168.0.1

Router(dhcp-config)#dns-server 8.8.8.8

Router(dhcp-config)#domain-name valdi.com

*show ip dhcp pool*
