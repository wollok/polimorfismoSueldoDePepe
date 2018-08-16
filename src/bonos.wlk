/*
 * Bonos por resultados: porcentaje y fijo
 */
object bonoPorcentaje {
	method monto(empleado) =  empleado.sueldoNeto() * 10 / 100
}

object bonoFijo {
	method monto(empleado) = 80
}


/*
 * Bono por presentismo: el que depende de las faltas
 */
object bonoDependeFaltas {
	method monto(empleado) =
		if(empleado.cantidadDeFaltas() == 0) 100
		else if(empleado.cantidadDeFaltas() == 1) 50
		else 0
}


/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) = 0 
}

