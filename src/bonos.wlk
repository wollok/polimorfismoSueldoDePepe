/*
 * Bonos por resultados: porcentaje y fijo
 */
object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}

object bonoMontoFijo {
	method monto(empleado) { return 800 } 
}


/*
 * Bonos por presentismo: normal, ajuste y demagogico
 */
object bonoPresentismoNormal {
	method monto(empleado) {
		if (empleado.cantidadDeFaltas() == 0) {
			return 2000
		} else if (empleado.cantidadDeFaltas() == 1) {
			return 1000
		} else {
			return 0
		}
	}
}

object bonoPresentismoAjuste {
	method monto(empleado) {
		return if (empleado.cantidadDeFaltas() == 0) 100 else 0
	}
}

object bonoPresentismoDemagogico {
	method monto(empleado) {
		return if (empleado.sueldoNeto() < 18000) 500 else 300
	}
}


/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) { return 0 } 
}

