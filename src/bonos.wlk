// bono por resultados por porcentaje
object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}


// bono por resultados de monto fijo
object bonoMontoFijo {
	// agregar el método que se necesita
}


// agregar bono por presentismo que depende de la cantidad de faltas 
object bonoPresentismoSegunFaltas {
	// agregar el método que se necesita
}
 

/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) { return 0 } 
}

