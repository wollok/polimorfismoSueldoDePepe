#Sueldo de Pepe

<img src="img/money.jpg" height="150" width="250">

[polimorfismo, if]

Implementar en Wollok los objetos necesarios para calcular el sueldo de pepe.
  
El sueldo se pepe se calcula así: sueldo = neto + bono x presentismo + bono x resultados.

El neto depende de la categoría, hay varias categorías. Por ejemplo, los gerentes que ganan $10000 de neto, y cadetes que ganan $15000, aunque puede haber más.
Hay tres posibilidades para el **bono por resultados**:  
* 10% sobre el neto,  
* $80 fijos,  
* o nada.

Hay dos **bonos por presentismo**:</br>
* En uno es $100 pesos si la persona a quien se aplica no faltó nunca, $50 si faltó sólo un día, $0 en cualquier otro caso. </br>
* En el otro siempre es $0, independientemente de las faltas. 

1) Hacer un test con pepe como cadete, con un bono resultado $80, y tiene un bono presentismo por faltas y falto 3 días.
Debería tener $15080 de sueldo.

2) Hacer un test con pepe como gerente, con un bono resultados de porcentaje, y con un bono de presentismo independiente de las faltas. El sueldo debe dar $11000.

Tests adicionales sugeridos: 

3) Realizar un test con pepe cadete con bono de resultados por porcentaje, con un bono por presentismo de faltas, nunca faltó. Debería tener $16600 de sueldo.

4) Realizar un test con pepe cadete con bono de resultados por porcentaje, con un bono por presentismo de faltas, falto 1 día. Debería tener $16550 de sueldo.
