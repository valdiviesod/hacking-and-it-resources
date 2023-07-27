# Comandos basicos Docker

Area: Docker

```jsx
docker ps CONTAINER #Ver imagenes corriendo 
docker ps -a CONTAINER #Ver estado de las imagenes actuales y pasadas (un tipo de logs)
docker logs -f CONTAINER #Ver logs
docker exec COMANDOS CONTAINER COMANDOS #Comandos directamente al container
-it #interactive terminal
docker run -d CONTAINER #Contaier en background
```