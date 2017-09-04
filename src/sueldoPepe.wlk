
object pepe {
	
	var categoria = gerente
	var bonoPresentismo = bonoDependeFaltas
	var cantidadDeFaltas = 1
	var bonoResultado = bonoNulo
	
	method sueldo() {
		return categoria.neto() + bonoPresentismo.monto(cantidadDeFaltas) +  bonoResultado.monto(categoria.neto())
	} 
	
}


object bonoNulo {
	method monto(cantidad) = 0 
}

object bonoDependeFaltas {
	
	method monto(cantidad) {
		if(cantidad == 0) {return 100}
		if(cantidad == 1) { return 50}
		return 0
	}
}
object gerente {
	var neto = 10000
	method neto() = neto
	
}


object bonoPorcentaje {
	method monto(neto) =  0.1 * neto
   }

object bonoFijo {
	method monto(cantidad) = 80
}



object cadete {
	var neto = 15000
	method neto() = neto
}



