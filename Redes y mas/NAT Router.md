https://ccnadesdecero.es/configuracion-nat-estatica-dinamica-pat/
- Para el Router frontera hacia el publico
# NAT Via ACL
*ip nat inside source list 10 (estatico o por numero de lista) interface nombreInterfaz(pool o interfaz) overload (opcional, cuando hay una sola direccion externa o publica)*
*interface interfazOutside (la que va al publico)*
*ip nat outside*
*interface interfazInside*
*ip nat inside*
