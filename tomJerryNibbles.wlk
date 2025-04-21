object tom {
    var energiaActual = 50
    method comer(unRaton) {
        self.cambiarEnergia(12 + unRaton.peso())
    }
    method energia() = energiaActual
    method cambiarEnergia(cantidad) {
        energiaActual = energiaActual + cantidad
    }
    method correr(metros) {
		energiaActual = energiaActual - (metros / 2)

    }
    method velocidadMaxima() {
        return 5 + (energiaActual / 10)
    }
}

object jerry {
    var edadActual = 2
    method edad() = edadActual
    method cumplirAnios() {
        edadActual = edadActual + 1
    }
    method peso() = self.edad() * 20
}

object nibbles {
    method peso() {
        return 35
    }
}
/*
object tom {
	

	method puedeCorrer(distancia) {
		return energia >= distancia / 2
	}

	method puedeCazar(distancia){
		return self.puedeCorrer(distancia)
	}

	method puedeCazar(distancia, raton) {
		if (self.puedeCazar(distancia)) {
			self.correr(distancia)
			self.comer(raton)
		}
	}

	
}
*/