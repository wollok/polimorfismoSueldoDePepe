# Sueldo de Pepe
 
[![Build Status](https://travis-ci.org/wollok/polimorfismoSueldoDePepe.svg?branch=master)](https://travis-ci.org/wollok/polimorfismoSueldoDePepe)


<img src="img/money.jpg" height="150" width="250">

[polimorfismo, if]


## Consigna

Implementar en Wollok los objetos necesarios para calcular el sueldo de pepe.
  
El sueldo se pepe se calcula así: </br>
**sueldo = neto + bono x resultados + bono x presentismo**.


### Neto

El _neto_ depende de la categoría, hay varias categorías. 
Contemplar al menos estas dos: gerentes que ganan $15000 de neto, y cadetes cuyo neto es $20000.
Tener en cuenta que puede haber más categorías.


### Bono por resultados

Pepe tiene un bono por resultados que va cambiando a lo largo del tiempo. Sabemos que hay tres posibilidades para el **bono por resultados**:  
* _Porcentaje_: 10% sobre el neto.  
* _Monto fijo_: $800 fijos.
* _Nulo_: nada.


### Bono por presentismo

Al igual que el Bono por resultados, Pepe posee un bono por presentismo que puede variar mes a mes. Existen varios **bonos por presentismo**:</br>
* _Normal_: $2000 pesos si la persona a quien se aplica no faltó nunca, $1000 si faltó sólo un día, $0 en cualquier otro caso. 
* _Ajuste_: $100 pesos si el empleado no faltón nunca, $0 en cualquier otro caso. 
* _Demagógico_: $500 pesos si el neto es menor a 18000, $300 en caso contrario. Para este bono no importa cuántas veces faltó el emplado.
* _Nulo_: nada. 


<br>

## Primer batería de tests 

### Iniciales

1. Hacer un test con pepe como cadete, con bono resultado de monto fijo, y bono presentismo normal. Simular que faltó 3 días.
Debería tener $20800 de sueldo.

1. Hacer un test con pepe como gerente, con el bono resultado por porcentaje, y bono de presentismo nulo. El sueldo debe dar $16500.


### Adicionales sugeridos 

1. Realizar un test con pepe cadete con bono de resultados por porcentaje, bono por presentismo normal, nunca faltó. Debería tener $24000 de sueldo.

1. Realizar un test con pepe cadete con bono de resultados por porcentaje, bono por presentismo normal, falto 1 día. Debería tener $23000 de sueldo.


## Más variantes

1. Definir a **Sofía**, otra persona de la que hay que calcular el sueldo. Sofía solamente tiene bono por resultados, o sea que su sueldo se calcula como ```neto + bono x resultados```. <br>
A su vez, su neto es un 30% superior a lo que indica su categoría. P.ej. si Sofía es cadete, su neto es 26000. Recordar que para aumentar un número un 30%, se lo multiplica por 1.3. <br>
**Atención**: si Pepe, o cualquier otra persona que se agregue, es cadete, su neto es 20000. El incremento del 30% se aplica _solamente_ a Sofía. 


1. Agregar las siguientes categorías
	- **vendedor**: <br> su neto es de 16000 pesos. Si hay muchas ventas, hay un aumento de 25% (multiplicar por 1.25), o sea pasa a 20000. <br> El objeto que representa a esta categoría tiene que entender los mensajes `activarAumentoPorMuchasVentas()` y `desactivarAumentoPorMuchasVentas()`.
  
	- **medio tiempo**: en realidad, es un modificador sobre otra categoría, que se asigna enviando el mensaje `medioTiempo.categoriaBase(categoria)`. Indica que la persona trabaja medio tiempo, por lo tanto su neto es la mitad (dividir por dos) de lo que indica la categoría base. <br>
  P.ej. si definimos `medioTiempo.categoriaBase(gerente)`, entonces el neto de `medioTiempo` es 7500 (la mitad de 15000).
  
    
1. Agregar dos personas más, según lo que se detalla a continuación.
	- **Roque**, que en lugar de asignársele una categoría, se establece un neto de 28000 pesos. <br> 
	El sueldo se calcula como ```neto + bono por resultados + 9000 pesos```. <br> 
	Para el bono por resultados, se usan las mismas opciones que para Pepe.

	- **Ernesto**, que trabaja junto con un compañero, que puede cambiar. El neto de Ernesto es igual al de su compañero. <br> 
	Su sueldo se calcula como ```neto + bono por presentismo```. <br> 
	Para el bono por presentismo, usar las mismas opciones que para Pepe. Se sabe que Ernesto no falta nunca.
	
	
1. Armar un test con estas características
	- La categoría base de _medio tiempo_ es _cadete_.
	- Pepe tiene categoría medio tiempo (o sea, es cadete y trabaja medio tiempo), tiene bono por resultados de porcentaje, y bono por presentismo demagógico. Hacer que falte una vez.
	- Roque tiene bono por resultados monto fijo. 
	- Ernesto tiene como compañero a Pepe, y bono por presentismo de ajuste.
	
	Verificar que el sueldo de Pepe es 11500, el de Roque es 37800, y el de Ernesto es 10100.
	
	Dibujar el diagrama de referencias que queda al final de este test. Recordar que deben incluirse los objetos definidos por nosotros, _y también_ los números y booleanos.
