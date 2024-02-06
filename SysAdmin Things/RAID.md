## RAID ¿Qué es?

RAID es un término utilizado en informática, cuyas siglas vienen del inglés «Redundant Array of Independent Disks»

Es un proceso utilizado para combinar varios discos duros y que éstos funcionen de manera coordinada para formar una única unidad lógica en la que almacenar los datos.

A nivel empresarial, es muy utilizado a la hora de configurar el almacenamiento de servidores NAS y aplicaciones. Ofrece mayor tolerancia a fallos y más altos niveles de rendimiento que un sólo disco duro o un grupo de discos duros independientes.

## Tipos de RAID

En este post analizaremos los tipos de Raid más conocidos. Ya que cada uno tiene diferentes niveles de rendimiento, capacidad de almacenamiento y fiabilidad. Nuestra elección dependerá del tipo de información que queramos proteger. También del número de discos duros que tengamos, nuestra inversión.

![RAID 0](https://www.tecnozero.com/wp-content/uploads/2017/12/raid_0.png "RAID 0")

### Raid 0

Se necesitan mínimo 2 discos. Cuenta la Suma de tamaños de todos los HDD.

Un **RAID 0**, conocido como _**striping**, utiliza como mínimo 2 discos y reparte los datos entre ambos._ 

- Ofrece un **mayor** **rendimiento**.
- No debe utilizarse con datos críticos.

El inconveniente es que no hay redundancia y tolerancia a fallos, por lo que cualquier fallo o avería en uno de los discos conlleva una pérdida total de los datos.

Recomendado. Si priorizamos el rendimiento del sistema y el acceso a la información (diseño gráfico, en 3D y edición de video), y contamos con un presupuesto muy ajustado. Ofrece un **alto rendimiento**, especialmente para archivos grandes.

![RAID 1](https://www.tecnozero.com/wp-content/uploads/2017/12/raid-1.png "RAID 1")

### Raid1

Se necesitan mínimo 2 discos. En el caso de más unidades, solo cuenta el disco de menor tamaño.  
Es conocido como **“espejo” o “_mirroring_“.** El raid 1 utiliza 2 discos y duplica todos los datos de la primera unidad de forma sincronizada a una segunda unidad de almacenamiento. De esta forma, si el primer disco se estropea, el sistema seguirá funcionando y trabajando con el segundo disco sin problemas y sin perder datos.

Ofrece una rápida recuperación tras un fallo de la unidad, por tanto es una de las mejores configuraciones en cuanto a redundancia y tolerancia a fallos.

Además, disponemos de un mayor rendimiento de lectura/escritura, puesto que es posible escribir y leer de los dos discos al mismo tiempo.  
La desventaja es que tendremos que comprar 2 discos para tener la misma capacidad de almacenamiento efectivo (p.e. 2x1TB. que es realmente 1 TB en total), además se puede producir una gran sobrecarga del disco.

Recomendado para servidores de nivel básico en los que sólo contamos con 2 discos duros. Se recomienda para bases de datos pequeñas u otras aplicaciones que requieren poca capacidad, pero una redundancia de datos completa.

![RAID 5](https://www.tecnozero.com/wp-content/uploads/2017/12/raid-5.png "RAID 5")

### Raid 5

Se necesitan como mínimo 3 discos (se puede romper un disco sin perder los datos) El espacio disponible en el RAID 5 será de n-1, siendo n el número de discos del raid. Si utilizamos 5 discos de 1TB tendremos: 5 discos – 1 = 4 discos -> 4TB disponibles.

**Suele ser el RAID más usado en servidores**, ya que aporta la velocidad y rendimiento del RAID 0 (uso eficiente de la unidad, alto rendimiento en escritura y lectura) y la seguridad del RAID 1 ante las pérdida de datos.

El RAID 5 utiliza la paridad para recuperar los datos. Se dividen los datos en bloques en los diferentes discos, de forma que si hay un fallo en uno de ellos, esa parte de los datos se subsana con los datos almacenados en el resto de los discos, permitiendo al usuario continuar (aunque funciona más lenta) con su trabajo.

¿Cuáles son sus desventajas?

Hay un impacto medio de los fallos del disco y la reconstrucción es más larga por la necesidad de volver a calcular la paridad. El rendimiento tanto de lectura como de escritura sufre un gran impacto si la matriz del RAID 5 se ha degradado. Para discos SATA de gran capacidad (de 500GB a 1TB) los tiempos de reconstrucción son muy largos y conllevan una degradación del rendimiento del controlador.

> **Importante:** Si se produce un fallo en un segundo disco mientras se está realizando la reconstrucción del primero, se perderán todos los datos.

Lo recomendamos para un gran número de aplicaciones, pequeños servidores, proporciona alto rendimiento, redundancia de datos y además éste aprovecha mejor el espacio.

![RAID 6](https://www.tecnozero.com/wp-content/uploads/2017/12/raid-6.png "RAID 6")

### Raid6

Se necesitan como mínimo 4 discos. Puede tolerar dos fallos de discos duros (N-2)

El Raid6 es similar a la Raid 5 e incluye un disco de reserva que entra en funcionamiento una vez que uno de los discos se estropea (en este caso hasta que sustituimos el disco averiado, a todos los efectos tenemos un Raid 5).

Proporciona por tanto una elevada redundancia de datos y rendimiento de lectura.

El rendimiento en tareas de escritura es menor que el de Raid 5 debido a los dos cálculos de paridad. Requiere hacer un gasto adicional ya que **dedicamos dos discos a la** **paridad**, (si tenemos 4 discos de 1TB disponemos sólo de 2TB de espacio ya que los otros 2 TB se dedican a paridad).

El Raid 6 resulta aconsejable cuando queramos soportar varios fallos de unidades y ofrece una mayor redundancia para la protección de datos.

![RAID 10](https://www.tecnozero.com/wp-content/uploads/2017/12/raid-10.png "RAID 10")

### Raid10 (Raid 1+0)

_Se necesitan un mínimo de cuatro discos_

_En el RAID 1+0—> Se hace un Raid 1 y sobre ellos un RAID 0_

Se necesitan un mínimo de cuatro o más unidades, por lo que el coste es más elevado que en otras configuraciones.

a cambio obtenemos un alto rendimiento de lectura (gracias al Raid 0), a la vez que se proporciona tolerancia a los fallos (gracias al Raid1). P.e. si usamos 4 discos, se pueden romper hasta dos sin perder información (N-2), siempre que nos sean del mismo subgrupo.

Aunque su precio es más elevado, el RAID 10 es ideal para aplicaciones tipo servidores de bases de datos. Proporciona un elevado rendimiento, redundancia de datos completa y una rápida recuperación ante fallos de los discos.

![RAID 50](https://www.tecnozero.com/wp-content/uploads/2017/12/raid-50.png "RAID 50")

### Raid 50 (Raid 5+0)

_Se necesitan como mínimo 6 discos. s*( n-1). con la posibilidad de que se puedan estropear hasta 3 discos sin perder datos._

_En el Raid 5+0—> Se hace un Raid 5 y sobre ellos un RAID 0._

Con el RAID 50 conseguiremos un volumen muy robusto, un mayor rendimiento de lectura en comparación con la RAID 5 estándar, y un rendimiento de escritura de medio a alto.

Presenta las mismas desventajas que el RAID 5 (impacto medio ante los fallos de disco y tiempos de reconstrucción más largos al ser necesario volver a calcular la paridad), y un precio más elevado.

![RAID 60](https://www.tecnozero.com/wp-content/uploads/2017/12/raid-60.png "RAID 60")

### Raid 60 (Raid 6+0)

_Se necesitan como mínimo 8 discos, con la posibilidad de que se puedan estropear hasta 4 discos sin perder datos._

_En el Raid 6+0—> Se hace un Raid 6 y sobre ellos un RAID 0._

Obtenemos un alto rendimiento sobre todo en tareas de lectura.

Las desventajas son las mismas a las del RAID6 (rendimiento más bajo en escritura debido a los dos cálculos de paridad, y mayor gasto en hardware).

![RAID 0+1](https://www.tecnozero.com/wp-content/uploads/2017/12/raid-01.png "RAID 0+1")

### Raid 0+1

Necesitaremos 4 discos duros.

Los discos se agrupan por parejas para que cada una de éstas forme un RAID 0 y sobre estos 2 bloques montamos un Raid 1.  Esta configuración es menos segura que la RAID 10, ya que **no tolera dos fallos simultáneos**

## Tipos de RAID más usados en servidores.

**Los tipos de RAID más utilizados en servidores son el RAID1, RAID5, RAID 6 y RAID 10.**

Algunos términos importantes que conviene conocer son éstos:

**Datos de paridad:** éstos se distribuyen entre todos los discos físicos en el sistema. Si un disco físico falla, es posible reconstruirlo desde la paridad y los datos de los discos físicos restantes. Los datos de paridad están presentes en RAID 5, 6, 50 y 60.

**Modo Degradado:** Ocurre cuando uno de los discos del RAID se vuelve ilegible, el disco entonces es considerado corrupto y se extrae del RAID. Los datos y la paridad del disco son almacenados en los discos restantes. Este proceso degrada en gran medida el rendimiento del RAID, y es lo que se llama Modo degradado.

### Hot Swap, intercambio de discos

A la hora de configurar nuestro servidor hay que evaluar el impacto que tiene una posible parada de nuestros sistemas. Por ello, recomendamos incluir los elementos críticos del hardware por duplicado. Los más importantes con:

Fuentes de alimentación y ventiladores redundantes

**Hot Swap para intercambio en caliente de discos**. Muy importante, ya que nos permitirá sustituir el disco averiado por uno nuevo, **sin necesidad de desconectar o apagar el servidor,** para luego poder reconstruir la información.

Podemos dejarlo configurado de 2 formas:

_Tenemos el disco duro de reserva cargado en el RAID,_ aunque sin utilizar, de manera que si tenemos un fallo de disco duro automáticamente empieza a reconstruir los datos en el disco que teníamos preparado (Es un RAID 6).

_No tenemos el disco insertado en el servidor_ pero tenemos la capacidad de sustitución en caliente. Esta es una opción algo más arriesgada, que implica tener lo más cerca posible un disco de reserva y reemplazarlo lo antes posible antes de que falle una segunda unidad.

![Cabina RAID](https://www.tecnozero.com/wp-content/uploads/2017/12/hotswap.png "Cabina RAID")

### Controladora RAID

Una controladora RAID es una tarjeta de hardware o una aplicación de software que se utiliza con el objetivo de gestionar varios discos duros en un mismo servidor.

La controladora RAID puede darse por software o por hardware. Nuestra experiencia nos dice que es más recomendable escoger las controladoras por hardware, ya que son más fiables y ofrecen mayores niveles de rendimiento.

Más abajo las explicamos sus diferencias un poco más en detalle.

### Raid por software vs Raid por hardware

Un **sistema RAID** puede ser **controlado por hardware o por software**, y aquí es donde también existe diferencia tanto de funcionamiento como de rendimiento. Como ahora veremos cada sistema tiene sus pros y contras.-

### RAID por software

![RAID por software](data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7 "RAID por software")

Los discos se conectan a la placa o a una controladora, y es el procesador y el sistema operativo quienes hacen las operaciones necesarias para controlar el RAID y los discos.

Ventajas. Es fácilmente ampliable con la cantidad de discos que se necesiten, realmente la única limitación es la que ofrezca la placa base. También es más fácil de configurar.

Inconvenientes. Para aquellos RAID que necesiten más recursos, el rendimiento general del sistema puede verse afectado. Además en el caso de que se degrade el RAID, es más complicado volver a recuperarlo y se puede perder información.

### RAID por hardware

![contoladora raid](data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7 "contoladora raid")

Los discos se conectan a una controladora RAID que es la encargada de realizar todas las operaciones de control del RAID y los discos.

Ventajas

El **RAID por hardware** es más fiable que el **RAID por software** ya que es más independiente del resto de componentes.

Ofrece un mayor rendimiento, que sobre todo se notará en RAID 5 y RAID 6 donde se realizan operaciones de paridad y se consumen más recursos.

Inconvenientes

Es necesario realizar actualizaciones del firmware.

Puede haber incompatibilidades del hardware con la placa base del servidor o que no existan drivers apropiados—> por ello aconsejamos que tarjeta y servidor sean del mismo fabricante (IBM, Dell, HP).

Dependiendo del modelo de tarjeta que escojamos, será compatible con un determinado hardware y soportará determinados niveles de RAID. 

### Calculadora RAID online

Si queréis probar cómo quedarían las distintas configuraciones de RAID, existen múltiples calculadores online.

http://www.raid-calculator.com/

https://www.icc-usa.com/raid-calculator

https://www.synology.com/es-es/support/RAID_calculator (bastante más visual y en español)
