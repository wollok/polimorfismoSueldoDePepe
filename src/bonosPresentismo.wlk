object bonoNormal {
	method sueldoPorPresentismo(unaPersona) {
		if (unaPersona.faltas() == 0) {
			return 2000 
		} else if (unaPersona.faltas() == 1) {
			return 1000
		} else {
			return 0
		}
	}	
	
}
