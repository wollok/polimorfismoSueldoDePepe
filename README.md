Sueldo de Pepe

<img src="img/money.png" height="150" width="500">

[polimorfismo, if]

  Implementar en Wollok los objetos necesarios para calcular el sueldo de pepe.
El sueldo se pepe se calcula así: sueldo = neto + valor bono por presentismo + valor bono por resultados.
El neto depende de la categoría, hay varias categorías. Por ejemplo, los gerentes que ganan $1000 de neto, y cadetes que ganan $1500, aunque puede haber más categorías.

Hay dos bonos por presentismo:

en uno es $100 pesos si la persona a quien se aplica no faltó nunca, $50 si faltó un día, $0 en cualquier otro caso;
hay otro tipo de bono por presentismo que siempre es $0, independientemente de las faltas.
Nota: sólo para distinguir el monto del bono por presentismo (si es $100, $50 ó $0) se puede usar if y sus derivados. En el resto del ejercicio no se puede.

Hay tres posibilidades para el bono por resultados:
10% sobre el neto,
$80 fijos,
o nada

Acá aparecen un montón de objetos, piensen bien a qué objeto le piden cada cosa que hay que saber para poder llegar al sueldo de pepe.
Deben incluirse los siguientes tests:

1) Un test con pepe como cadete, con un bono resultado $80, y un bono presentismo por faltas, faltando dos días. Debería tener $1580 de sueldo.

2) Un test con pepe como gerente, con un bono resultados de porcentaje, y con un bono de presentismo independiente de las faltas. El sueldo debe dar $1100.

3) Un test con pepe gerente con bono de resultados por porcentaje, con un bono por presentismo de faltas, faltando un día. Debería tener $1150 de sueldo.


