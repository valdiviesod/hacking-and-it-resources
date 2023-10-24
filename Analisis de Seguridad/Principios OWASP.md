En el entorno laboral, los principios de seguridad están integrados en las tareas diarias. Ya sea que estés analizando registros, monitoreando un panel de gestión de eventos e información de seguridad (SIEM) o usando un [escáner de vulnerabilidades](https://csrc.nist.gov/glossary/term/vulnerability_scanner)

, utilizarás estos principios de alguna manera. 

Anteriormente, te presentamos varios principios de seguridad de OWASP, que incluían:

- **Minimizar la superficie expuesta a ataques**: se refiere a todas las vulnerabilidades potenciales que podría aprovechar un agente de amenaza.
    
- **Principio de mínimo privilegio**: significa conceder únicamente el acceso y la autorización mínimos necesarios para completar una tarea o función.
    
- **Defensa en profundidad**: hace referencia a que las organizaciones deben disponer de varios controles de seguridad que aborden los riesgos y las amenazas de diferentes maneras.
    
- **Separación de funciones**: refiere a que las acciones críticas deben depender de varias personas, cada una de las cuales sigue el principio del mínimo privilegio. 
    
- **Simplificar la seguridad**: tiene que ver con evitar soluciones innecesariamente complicadas, porque la complejidad dificulta la seguridad. 
    
- **Solucionar los problemas de seguridad correctamente**: significa que, cuando ocurren incidentes de seguridad, es necesario identificar la causa, contener el impacto, detectar las vulnerabilidades y realizar pruebas para garantizar que la reparación sea exitosa.
    

## Otros principios de seguridad de OWASP

A continuación, aprenderás acerca de otros cuatro principios de seguridad de OWASP que se utilizan para mantener seguras las operaciones de una organización y a las personas.

### **Establecer configuraciones seguras por defecto**

Este principio indica que el estado de seguridad óptimo de una aplicación también debe ser su estado predeterminado para los/las usuarios/as. O sea, debería requerirse un esfuerzo adicional para hacer que la aplicación sea insegura. 

### **Fallar de forma segura**

Fallar de forma segura significa que, cuando un control falla o se detiene, debe hacerlo restableciéndose automáticamente a su opción más segura. Por ejemplo, si un cortafuegos (firewall) falla, simplemente, debería cerrar todas las conexiones y bloquear las nuevas, en lugar de comenzar a aceptar todo.

### **No confiar en los servicios**

Muchas organizaciones trabajan con firmas asociadas o proveedoras de servicios. Estas suelen tener políticas de seguridad diferentes a las de la empresa. Por lo tanto, la compañía no debería dar por sentado que los sistemas de estas firmas sean seguros. Por ejemplo, si una aerolínea terceriza a una empresa proveedora el seguimiento de los puntos de recompensa, antes de compartir esa información con sus clientes, debería asegurarse de que los datos obtenidos y el saldo sean precisos.

### **Evitar la seguridad por oscuridad**

La seguridad de los sistemas clave no debe depender de mantener los detalles ocultos. Analiza el siguiente ejemplo de OWASP (2016):

La seguridad de una aplicación no debe depender de mantener el código fuente en secreto, sino que su seguridad tiene que basarse en muchos otros factores, como las políticas de contraseñas razonables, la defensa en profundidad, los límites de transacciones comerciales, una sólida arquitectura de red, y los controles de fraude y auditoría.