## Estado de los procesos
- new
- ready
- running
- waiting
- terminated
- suspended
## PCB
Cada vez que se crea un proceso el so crea un PCB (Process Control Block)
Estructura
- PID
- Estado del proceso
- Contador de programa: SIguiente instruccion a ejecutarse
- Informacion de planificacion: Prioridad
- Registros de CPU: Registro de datos y de direcciones.
- Informacion de estado E/S: Datos de entrada y por otsalida.
## Algoritmos de administracion de procesos
- Por prioridad
- First In First Out (FIFO): Se ejecutan por orden segun se generan.
- Shortest Job First (SJF): Da prioridad a los procesos cortos.
- Shortest Remaining Time (SRT): Un proceso puede desplazar a otro si tiene un tiempo de ejecucion menor.
- Round Robin (RR): Usa una cola de ejecucion circular, es decir que se ejecutan de primero a ultimo.
