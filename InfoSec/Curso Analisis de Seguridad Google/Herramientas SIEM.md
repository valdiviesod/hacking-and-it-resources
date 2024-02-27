# Más información sobre herramientas de ciberseguridad

Anteriormente, conociste varias herramientas que usan los miembros del equipo de ciberseguridad para monitorear e identificar posibles amenazas, riesgos y vulnerabilidades de seguridad. En esta lectura, profundizarás en las herramientas de ciberseguridad más comunes, tanto de código abierto como propietarias, que puedes usar como profesional de la ciberseguridad.

## Herramientas de código abierto

Las herramientas de código abierto suelen ser gratuitas y fáciles de usar. Su objetivo es proporcionar a los/las usuarios/as un software creado por las personas, de manera colaborativa, que puede resultar más seguro. Además, las herramientas de código abierto permiten una mayor personalización por parte de los/las usuarios/as, lo que da lugar a una variedad de nuevos servicios, creados a partir del mismo paquete de software de código abierto. 

Los/las ingenieros/as de software crean proyectos de código abierto para mejorar el software y ponerlo a disposición de cualquier persona, siempre y cuando se respete la licencia especificada. El código fuente para proyectos de código abierto está fácilmente disponible para los/las usuarios/as, así como el material de capacitación que los acompaña. Esto permite a los/las usuarios/as modificar y mejorar los materiales del proyecto.

## Herramientas propietarias

Las herramientas propietarias son propiedad de la persona o empresa que las desarrolla, y los/las usuarios/as generalmente pagan una tarifa por su uso y para su capacitación. Las/los dueños/as de las herramientas propietarias son los/las únicos/as que pueden acceder y modificar el código fuente. Esto significa que los/las usuarios/as tienen que esperar a que se realicen actualizaciones en el software y, posiblemente, pagar una tarifa por estas. El software propietario generalmente permite a los/las usuarios/as modificar un número limitado de características o funcionalidades para satisfacer las necesidades de una persona u organización. Algunos ejemplos de herramientas propietarias son las herramientas SIEM Chronicle y Splunk®.

### **Conceptos erróneos habituales**

Existe la idea errónea de que las herramientas de código abierto son menos efectivas y no tan seguras de usar, en relación a las propietarias. Sin embargo, a lo largo de los años los/las desarrolladores/as han ido creando materiales de código abierto que se han convertido en estándares de la industria. Aunque es cierto que los agentes de amenaza han intentado manipular herramientas de código abierto, la realidad es que, justamente por ser de código abierto, es más difícil que las personas con intenciones maliciosas logren causar daño. La amplia exposición y el acceso inmediato al código fuente por parte de usuarios/as y profesionales bienintencionados/as e informados/as hace que sea menos probable que ocurran problemas, ya que pueden solucionarlos tan pronto como se identifican.

## Ejemplos de herramientas de código abierto

En ciberseguridad, hay muchas herramientas que son de código abierto y comúnmente disponibles. Dos ejemplos son Linux y Suricata.

### **Linux**

Linux es un sistema operativo de código abierto ampliamente utilizado, que te permite adaptarlo a tus necesidades a través de una interfaz de línea de comandos. Un **sistema operativo** es la interfaz entre el hardware de la computadora y el usuario, y se usa para comunicarse con el hardware de una computadora y gestionar las aplicaciones de software. 

Existen distintas versiones de Linux para realizar tareas específicas. Más adelante en el programa de certificación, hablaremos a fondo de Linux y su interfaz de línea de comandos. 

### **Suricata**

Suricata es un software de análisis de redes de código abierto y detección de amenazas. Este tipo de software se utiliza para analizar el tráfico de red, identificar comportamientos sospechosos y generar registros de datos de red. Al detectar la actividad entre usuarios, computadoras o direcciones de Protocolo de Internet (IP), ayuda a descubrir posibles amenazas, riesgos o vulnerabilidades. 

Suricata fue desarrollado por la Open Information Security Foundation (OISF), una organización que se dedica a mantener el uso del código abierto del proyecto Suricata, para así garantizar que sea gratuito y esté disponible públicamente. Suricata es muy usado en el sector público y privado, y se integra con muchas herramientas SIEM y otras de seguridad. También profundizaremos sobre Suricata más adelante en el programa.

# Usa herramientas SIEM para proteger a las organizaciones

Anteriormente, leíste sobre las herramientas de gestión de eventos e información de seguridad (SIEM) y algunos paneles SIEM. También aprendiste sobre diferentes amenazas, riesgos y vulnerabilidades que una organización puede experimentar. En esta lectura, conocerás más acerca de los datos del panel de control de SIEM y cómo las y los profesionales de ciberseguridad los utilizan para identificar una amenaza, riesgo o vulnerabilidad potencial.

## Splunk

Splunk ofrece diferentes opciones de herramientas SIEM: Splunk® Enterprise y Splunk® Cloud. Ambas te permiten revisar los datos de una organización en paneles (dashboards). Esto ayuda a las y los profesionales de seguridad a gestionar la infraestructura interna de una organización mediante la recopilación, búsqueda, monitoreo y análisis de datos de registro de múltiples fuentes, y a observar así la totalidad de las operaciones diarias de una organización. 

Revisa los siguientes paneles de Splunk y sus propósitos:

### **Panel de postura de seguridad**

El panel de postura de seguridad está diseñado para centros de operaciones de seguridad (SOC). Muestra los acontecimientos y tendencias destacados de una organización en cuanto a seguridad, durante las últimas 24 horas, y permite a las/los profesionales determinar si la infraestructura y las políticas de seguridad funcionan según lo diseñado. Las/los analistas de seguridad pueden usar este panel para monitorear e investigar amenazas potenciales en tiempo real, como una actividad de red sospechosa cuyo origen es una dirección IP específica.

### **Panel de resumen ejecutivo**

El panel de resumen ejecutivo analiza y monitorea la salud general de la organización a lo largo del tiempo. Esto ayuda a los equipos de seguridad a mejorar las medidas que reducen el riesgo. Las/los analistas de seguridad podrían usar este panel para proporcionar información de alto nivel a las partes interesadas, como generar un resumen de incidentes y tendencias de seguridad durante un periodo de tiempo determinado.

### **Panel de revisión de incidentes**

El panel de revisión de incidentes permite a las/los analistas identificar patrones sospechosos que pueden ocurrir en caso de un incidente. Además, destaca elementos de alto riesgo que necesitan una revisión inmediata por parte de un/a analista. Este panel puede ser muy útil porque proporciona una cronología visual de los eventos que condujeron a un incidente.

### **Panel de análisis de riesgos**

El panel de análisis de riesgos ayuda a las/los analistas a identificar el riesgo para cada objeto de riesgo (por ejemplo, un usuario específico, una computadora o una dirección IP). Muestra cambios en la actividad o el comportamiento en relación con el riesgo, como un/a usuario/a que inicia sesión fuera de las horas de trabajo normales o un tráfico de red inusualmente alto desde una computadora específica. Un/a analista de seguridad podría usar este panel para analizar el impacto potencial de las vulnerabilidades en activos críticos, lo cual ayuda a priorizar sus esfuerzos de mitigación de riesgos.

## Chronicle

Chronicle es una herramienta SIEM nativa de la nube de Google que retiene, analiza y busca datos de registro para identificar posibles amenazas, riesgos y vulnerabilidades de seguridad. Chronicle te permite recopilar y analizar datos de registro de acuerdo con: 

- un activo específico
    
- un nombre de dominio
    
- un usuario
    
- una dirección IP
    

Chronicle proporciona múltiples paneles que ayudan a las/los analistas a monitorear los registros de una organización, crear filtros y alertas y rastrear nombres de dominio sospechosos. 

Revisa los siguientes paneles de Chronicle y sus propósitos:

### **Panel de información empresarial (Enterprise Insights)**

El panel de información empresarial muestra las alertas recientes. Identifica nombres de dominio sospechosos en los registros, conocidos como indicadores de compromiso (IOC), y cada resultado se etiqueta con una puntuación de confianza para indicar la probabilidad de una amenaza. También proporciona un nivel de gravedad, que indica la importancia de cada amenaza para la organización. Un/a analista de seguridad podría usar este panel para monitorear los intentos de inicio de sesión o acceso a datos relacionados con un activo crítico, como una aplicación o sistema, desde ubicaciones o dispositivos inusuales.

### **Panel de transferencia y estado de los datos**

El panel de transferencia y estado de los datos muestra el número de registros de eventos, fuentes de registro y tasas de éxito de los datos que se procesan en Chronicle. Un/a analista de seguridad podría usar este panel para asegurarse de que los orígenes de los registros estén configurados correctamente y que se reciban sin errores. Esto garantiza que el equipo de seguridad tenga acceso a los datos que se necesitan, al abordar los problemas relacionados con el registro.

### **El panel de coincidencias de IOC**

El panel de coincidencias de IOC indica las principales amenazas, riesgos y vulnerabilidades para la organización. Las y los profesionales de seguridad utilizan este panel para observar los nombres de dominio, las direcciones IP y los IOC de los dispositivos a lo largo del tiempo, con el fin de identificar tendencias. Esta información les permite hacer foco en las principales amenazas. Por ejemplo, las/los analistas de seguridad pueden usar este panel para buscar actividad adicional asociada con una alerta, como un inicio de sesión de usuario sospechoso desde una ubicación geográfica inusual.

### **Panel principal**

El panel principal muestra un resumen de alto nivel de la información relacionada con la ingestión de datos, las alertas y la actividad de eventos de la organización, a lo largo del tiempo. Las y los profesionales de seguridad pueden usar este panel para acceder a una cronología de eventos de seguridad, como un pico en intentos de inicio de sesión fallidos, para identificar tendencias de amenazas en fuentes de registro, dispositivos, direcciones IP y ubicaciones físicas.

### **Panel de detección de reglas**

El panel de detección de reglas proporciona estadísticas de incidentes con el mayor índice de ocurrencias, severidades y detecciones a lo largo del tiempo. Las/los analistas de seguridad pueden usar este panel para acceder a una lista de todas las alertas activadas por una regla de detección específica, como una regla diseñada para alertar cada vez que un/a usuario/a abre un archivo adjunto malicioso conocido, desde un correo electrónico. Las/los analistas luego usan esas estadísticas para ayudar a gestionar incidentes recurrentes y establecer tácticas de mitigación, que permitan reducir el nivel de riesgo de una organización.

### **Panel de descripción general del acceso de usuarios**

El panel de descripción general del acceso de usuarios proporciona información acerca del comportamiento de acceso de usuarios/as en toda la organización. Las/los analistas de seguridad pueden usar este panel para acceder a una lista de todos los eventos de inicio de sesión de usuarios para identificar las actividades inusuales, como el inicio de sesión de un mismo usuario desde varias ubicaciones al mismo tiempo. Esta información se usa para ayudar a mitigar las amenazas, los riesgos y las vulnerabilidades de las cuentas de usuario y las aplicaciones de la organización.