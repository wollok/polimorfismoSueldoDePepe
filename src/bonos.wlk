object bonoDependeFaltas {
	method monto(empleado) =
		if(empleado.cantidadDeFaltas() == 0) 100
		else if(empleado.cantidadDeFaltas() == 1) 50
		else 0
}

object bonoNulo {
	method monto(empleado) = 0 
}

object bonoPorcentaje {
	method monto(empleado) =  empleado.sueldoNeto() * 10 / 100
}

object bonoFijo {
	method monto(empleado) = 80
}
