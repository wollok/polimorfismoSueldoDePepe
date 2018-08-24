import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultados = bonoNulo
	var cantidadDeFaltas = 0
	
	method setCategoria(cat) { categoria = cat }
	method setBonoPresentismo(bono) { bonoPresentismo = bono }
	method setBonoResultados(bono) { bonoResultados = bono }
	method setCantidadDeFaltas(cantidad) { cantidadDeFaltas = cantidad }
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self) +  bonoResultados.monto(self)	
	}
	
}
