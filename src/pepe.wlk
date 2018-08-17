import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() // sumar los bonos	
		/* Orientaciones para esto
		 * - todos los bonos entienden el mensaje monto(empleado)
		 *   en este caso ¿quién es el empleado?
		 * - hay que sumarle, al sueldo neto, los montos de dos bonos: por presentismo y por resultado
		 *   Ver en el enunciado que el sueldo es la suma de tres cosas. 
		 *   Intenten que el código quede parecido a la fórmula que está en el enunciado.
		 */ 
	}
	
}
