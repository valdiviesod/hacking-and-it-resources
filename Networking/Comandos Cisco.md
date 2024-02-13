*show running-config*
## Acceso Telnet con passwd
*line vty 0 4* 
*password passwd*
*login*
*enable secret level 15 passwd*

## Acceso SSH
*hostname nombre*
*show ip ssh*
*ip domain-name dominio.com*
*username usuario privilege 15(Mayor) secret passwd*
*crypto key generate rsa (1024)*
*ip ssh version 2*
*line vty 0 4* 
*transport input ssh*
*login*