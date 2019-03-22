import categorias.*
import bonosResultado.*

object pepe {
	var categoria = gerente
	var bonoResultado = bonoNulo
	var bonoPresentismo
	
	method categoria(_categoria) {
		categoria = _categoria
	}
	
	method bonoResultado(_resultado) {
		bonoResultado = _resultado
	}
	
	method sueldo() {
		return 	self.neto() + 
				self.bonoPresentismo() + 
				self.bonoResultado()
	}
	
	method neto() {
		return categoria.sueldoNeto()
	}
	
	method bonoPresentismo() {
		return bonoPresentismo.sueldoPorPresentismo(self)
	}
	
	method bonoResultado() {
		return bonoResultado.sueldoPorResultado(self)
	}
	
}

