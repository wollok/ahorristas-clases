// Clase: define el comportamiento que va a tener los objetos instancias
class CuentaCorriente {
	var property saldo = 0 // Valor por defecto (si no se especifica en la instanciación)
	method depositar(monto) { saldo += monto }
	method extraer(monto) { saldo -= monto }
}

object colchon {
	var property dinero = 0
	method guardar(monto) { dinero += monto }
}

//object juan 
class PersonaBancarizada {
	const nombre
	const miCuenta = new CuentaCorriente() // Instanciar = Crear un objeto a partir de una clase
	method cobrar(monto) { 
		miCuenta.depositar(monto)
	}
	method gastar(monto) { 
		miCuenta.extraer(monto)
	}
	method ahorros() { 
		return miCuenta.saldo()
	}
	method salirAComer() {
		self.gastar(500)
	}
	method nombre() {
		return nombre
	}
}

object pepe {
	const cajaFuerte = colchon
	const miCuenta = new CuentaCorriente()
	method cobrar(monto) { 
		cajaFuerte.guardar(monto)
	}
	method gastar(monto) { 
		miCuenta.extraer(monto)
	}
	method ahorros() { 
		return miCuenta.saldo() + cajaFuerte.dinero()
	}
}


