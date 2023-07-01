Ejemplo de Escalado de privilegios con python:
***python3.9
import os
os.setuid(0) -> id de root***
- getcap -r / 2>/dev/null -> Listar las capabilities del sistema de manera recursiva sin mostrar errores.
- setcap cap_setuid+ep binario -> Añadir capabilitie a un binario
- setcap -r binario -> Elimina las capabilities del binario