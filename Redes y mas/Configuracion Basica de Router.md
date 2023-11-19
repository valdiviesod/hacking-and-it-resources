1. **Configurar el nombre del router:**
    
    `Router(config)# hostname NOMBRE-DEL-ROUTER`
    
2. **Configurar una contraseña de acceso al modo privilegiado (enable):**
    
    `Router(config)# enable secret CONTRASEÑA-DE-ENABLE`
    
3. **Configurar una ruta estática:**
    
    `Router(config)# ip route DESTINO MÁSCARA-DE-SUBRED PRÓXIMO-SALTO`
    
4. **Configurar la contraseña de la línea de consola (opcional):**
    
    `Router(config)# line con 0`
    `Router(config-line)# password CONTRASEÑA-DE-CONSOLA` 
    `Router(config-line)# login`
    
5. **Configurar la contraseña de la línea vty (para acceso remoto, opcional):**
    
    `Router(config)# line vty 0 15 
    `Router(config-line)# password CONTRASEÑA-DE-VTY` 
    `Router(config-line)# login`
    
6. **Guardar la configuración:**
    
    `Router(config)# end 
    `Router# write memory`