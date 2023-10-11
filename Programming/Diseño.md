- Alta cohesion y bajo acoplamiento
# SOLID
- Abierto-cerrado: El CORE es inmutable (Objetos de negocio) pero los servicios externos a el son extensibles
- Liskov: Las pruebas de Padre e hijo deben ser las mismas. Maximo se deben realizar dos abstracciones (herencia) en el codigo.
- Segregacion de Interfaces: Una interfaz por cada Responsabilidad.
- Inversion de dependencia: No depender de clases especificas sino de Interfaces.
*Arquitectura de puertos y adaptadores
**Aplicación = Casos de Uso (Funcionalidades, resuelven solicitudes)** 
**Dominio = Entidades de negocio (Modelo de negocio)**
**Servicio = Conexion externa (Driven)
- Los puertos son interfaces (Driver)
- Interfaz: Contrato 
- Driver (Conducen): request 
- Driven (Conducidos) 