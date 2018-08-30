// bono por resultados por porcentaje
object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}


// bono por resultados de monto fijo
object bonoMontoFijo {
	// agregar el método que se necesita
}


// agregar bonos por presentismo  
object bonoPresentismoNormal {
	// agregar el método que se necesita
}
// agregar bonos ajuste y demagogico
 

/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) { return 0 } 
}

