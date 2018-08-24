
object gerente {
	method neto() { return 15000 } 
}

object cadete {
	method neto() { return 20000 }
}

object vendedor {
	var hayMuchasVentas = false
	method neto() { 
		var multiplicadorMuchasVentas = 1
		if (hayMuchasVentas) { 
			multiplicadorMuchasVentas = 1.25
		}
		return 16000 * multiplicadorMuchasVentas
	}
	method activarAumentoPorMuchasVentas() { hayMuchasVentas = true }	
	method desactivarAumentoPorMuchasVentas() { hayMuchasVentas = false }	
}

object medioTiempo {
	var categoriaBase
	
	method setCategoriaBase(cat) { categoriaBase = cat }
	method neto() { return categoriaBase.neto() / 2 }
}
