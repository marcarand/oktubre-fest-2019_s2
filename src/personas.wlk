class Persona {
	const property peso
	const property musicaTradicional
	const property nivelAguante
	const property marcasPreferidas = []
	const property jarrasCompradas = []
	const property nacionalidad
	
	method estaEbria() {
		return ((self.totalAlcohol()*peso) > nivelAguante)
	}
	
	method totalAlcohol() {
		return self.jarrasCompradas().sum( { jarra => jarra.contenidoAlcohol()} )
	}
	
	method tomarJarra(jarra) {
		jarrasCompradas.add(jarra)
	}
	
	method leGusta(marca) {
		return marcasPreferidas.contains(marca)
	}
	
	method quiereEntrar(carpa) { return (self.leGusta(carpa.marcaVendida())) and (carpa.bandaMusical() == musicaTradicional)

	method esEbrioEmpedernido() { return jarrasCompradas.all( {jarra => jarra.capacidad() >= 1} ) }
	
	method esPatriota() { return jarrasCompradas.all( {jarra => jarra.procedencia() == nacionalidad} ) } 
}

class Belga inherits Persona {
	override method leGusta(marca) { return marca.cantLupulo() > 0.04 }
}

class Checo inherits Persona {
	override method leGusta(marca) { return marca.graduacion() > 8 }
}

class Aleman inherits Persona {
	override method quiereEntrar(carpa) { return super(carpa) and carpa.genteDentro().size().even() } 
	override method leGusta(marca) { return true }
}


}