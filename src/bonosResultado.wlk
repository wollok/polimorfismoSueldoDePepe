object bonoMontoFijo {
	method sueldoPorResultado(unaPersona) {
		return 800
	}
}

object bonoNulo {
	method sueldoPorResultado(unaPersona) {
		return 0
	}
}

object bonoPorcentaje {
	method sueldoPorResultado(unaPersona) {
		return 0.1 * unaPersona.neto()
	}
}