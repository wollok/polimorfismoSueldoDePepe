/*
 * Bonos por resultados: porcentaje y fijo
 */
object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}

object bonoFijo {
	method monto(empleado) { return 80 } 
}


/*
 * Bono por presentismo: el que depende de las faltas
 */
object bonoDependeFaltas {
	method monto(empleado) {
		if (empleado.cantidadDeFaltas() == 0) {
			return 100
		} else if (empleado.cantidadDeFaltas() == 1) {
			return 50
		} else {
			return 0
		}
	}
}


/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) { return 0 } 
}

