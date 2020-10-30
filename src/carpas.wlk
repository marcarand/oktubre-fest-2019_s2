class Carpa {
	const property genteAdmitida
	const property marcaVendida
	const property bandaMusical
	var property genteDentro = []
	
	method cantGente() { return genteDentro.size() }
	
	method dejarIngresar(persona) { return self.cantGente() <= genteAdmitida and not persona.estaEbria() }

	method puedeEntrar(persona) { return self.dejarIngresar(persona) and persona.quiereEntrar(self)}

	method hacerEntrar(persona) {
		if (self.puedeEntrar(persona)) { genteDentro.add(persona) } else { self.error('la persona no puede entrar') }
	}

	method servirJarra(persona, capacidadJarra) {
		if (genteDentro.contains(persona)) { 
			const jarra = new Jarra(capacidad=capacidadJarra, marca=self.marcaVendida())
			persona.tomarJarra(jarra)
		}
		else { self.error('la persona no se encuentra en la carpa')}
	}
	
	method ebriosEmpedernidos() { return genteDentro.count({ gente => gente.esEbrioEmpedernido() }) }

}
