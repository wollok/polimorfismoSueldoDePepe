import categorias.*
import bonos.*

object pepe {
	var property categoria = gerente
	var property bonoPresentismo = bonoNulo
	var property bonoResultado = bonoNulo
	var property cantidadDeFaltas = 0
	
	method sueldoNeto() = categoria.neto()
	
	method sueldo() = self.sueldoNeto() + bonoPresentismo.monto(self) +  bonoResultado.monto(self)
}
