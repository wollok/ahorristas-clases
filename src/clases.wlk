
class CuentaCorriente {
	var property saldo = 0
	method depositar(monto) { saldo += monto }
	method extraer(monto) { saldo -= monto }
}

object colchon {
	var property dinero = 0
	method guardar(monto) { dinero += monto }
}

object juan {
	const miCuenta = new CuentaCorriente()
	method cobrar(monto) { 
		miCuenta.depositar(monto)
	}
	method gastar(monto) { 
		miCuenta.extraer(monto)
	}
	method ahorros() { 
		return miCuenta.saldo()
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


