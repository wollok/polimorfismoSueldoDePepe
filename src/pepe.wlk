import categorias.*
import bonosResultado.*
import bonosPresentismo.*

object pepe {
	var categoria = gerente
	var bonoResultado = bonoNulo
	var bonoPresentismo = bonoNormal
	var faltas = 0
	
	method faltas() {
		return faltas
	} 
	
	method faltas(nuevasFaltas) {
		faltas = nuevasFaltas
	}
	
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

