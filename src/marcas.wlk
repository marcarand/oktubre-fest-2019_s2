import paises.*

class Marca {
	const property cantLupulo
	const property procedencia
	const property graduacionReglamentaria = 2.5
}

class Rubia inherits Marca {
	var property graduacion
}

class Negra inherits Marca {
	method graduacion() { return graduacionReglamentaria*2*cantLupulo } 
}

class Roja inherits Marca {
	method graduacion() { return graduacionReglamentaria*2*cantLupulo*1.25 }
}

// MARCAS
// ======
// Corona
const corona = new Rubia(cantLupulo=0.06, procedencia=mexico, graduacion=4)
	
// Guiness
const guiness = new Negra(cantLupulo=0.05, procedencia=usa)
	
// Hofbrau
const hofbrau = new Roja(cantLupulo=0.02, procedencia=alemania)
