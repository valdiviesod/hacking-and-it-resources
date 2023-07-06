Cron es un administrador de tareas de Linux que permite ejecutar comandos en un momento determinado, por ejemplo, cada minuto, día, semana o mes. Si queremos trabajar con cron, podemos hacerlo a través del comando **crontab**.

El formato de configuración de cron es el siguiente: **Minuto Hora Dia-del-Mes Mes Dia-de-la-Semana Comando-a-Ejecutar**

El intervalo de tiempo se especifica mediante 5 campos que representan, de izquierda a derecha:

- **Minutos**: de 0 a 59.
- **Horas**: de 0 a 23.
- **Día del mes**: de 1 a 31.
- **Mes**: de 1 a 12.
- **Día de la semana**: de 1 a 6 lunes a sábado (1=lunes, 2=martes, etc.) y 0 o 7 el domingo.

Si quisiéramos especificar todos los valores posibles de un parámetro (minutos, horas, etc.) podemos hacer uso del asterisco (*****). Esto implica que si en lugar de un número utilizamos un asterisco, el comando indicado se ejecutará cada minuto, hora, día de mes, mes o día de la semana, como en el siguiente ejemplo:

*** * * * * /home/user/script.sh**