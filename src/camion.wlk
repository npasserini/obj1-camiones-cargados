object camion {
	var carga = []
	
	method cargar(cosa) { carga.add(cosa) }
	method descargar(cosa) { carga.remove(cosa) }
}

object knightRider {
	method peso() = 500
	method peligrosidad() = 10
}

object bumpleBee {
	var property esAuto = true 
	method peso() = 800
	method peligrosidad() = if (esAuto) 15 else 30
}

object deposito {
	var property cosas = [knightRider, bumpleBee]
	
	method cargarCamion(camion) {
		cosas.forEach({ cosa => camion.cargar(cosa) })
	}
}