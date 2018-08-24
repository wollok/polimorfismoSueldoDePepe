import bonos.*

object sofia {
	var categoria
	var bonoResultados
	
	method setCategoria(cat) { categoria = cat }
	method setBonoResultados(bono) { bonoResultados = bono }

	method sueldoNeto() { return categoria.neto() * 1.3 }
	method sueldo() {
		return self.sueldoNeto() + bonoResultados.monto(self)	
	}
}

object roque {
	var bonoResultados
	method setBonoResultados(bono) { bonoResultados = bono }

	method sueldoNeto() { return 28000 }
	method sueldo() {
		return self.sueldoNeto() + bonoResultados.monto(self) + 9000	
	}
}

object ernesto {
	var companiero
	var bonoPresentismo = bonoNulo
	method setCompaniero(empleado) { companiero = empleado }
	method setBonoPresentismo(bono) { bonoPresentismo = bono }

	method cantidadDeFaltas() { return 0 }
	
	method sueldoNeto() { return companiero.sueldoNeto() }
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self)	
	}	
}