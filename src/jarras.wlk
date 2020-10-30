class Jarra {
	const property capacidad
	const property marca
	
	method contenidoAlcohol() {
		return capacidad * (marca.graduacion()/100)
	}
	method procedencia() {
		return marca.procedencia()
	}
}
