# Declarar variable:
    cadena=texto
    cadena="Texto con espacios"
    numero=5

    # Para almacenar la salida de un comando en una variable
    comando=`ls -l | tail -n +2`
    # Se puede poner dobles comillas dentro de los backticks
    comando=`ls -l | grep "Directorio Con Espacios"`

# Acceder al valor de la variable:
    $variable

# Condicional if:
    if [ $numero -eq 5 -o $numero -eq 7 ]; then
        # Código
    elif [ $numero -lt 3 ]; then
        # Código
    else
        # Código
    fi

    # Usar [[ ]] Para comparar cadenas, permite expresiones regulares:
    if [[ $cadena == [sS] ]]; then
        # Código
    fi

    # Para comparar números:
    #     -gt => greater than
    #     -ge => greater or equal
    #     -lt => lower than
    #     -le => lower or equal
    #     -eq => equal
    #     -ne => not equal

    # Operadores lógicos:
    #     -a => and
    #     -o => or

# Bucle for:
    for (( i = 0; i < 5; i++ )); do
        # Código, para acceder al valor de i se usa $i
    done
    # Si queremos que i se incremente con otro valor que no sea uno:
    for (( i = 0; i < 10; i += 5 )); do
        # Código
    done

# Bucle for in:
    for i in `ls`; do
        # Código
    done
