object tom {
    var energiaActual = 50
    method comer(unRaton) {
        self.cambiarEnergia(12 + unRaton.peso())
    }
    method energia() = energiaActual
    method cambiarEnergia(cantidad) {
        energiaActual = energiaActual + cantidad
    }
    method correr(distancia) {
		energiaActual = 0.max(energiaActual - distancia / 2)
    }
    method puedeCorrer(distancia) {
        return energiaActual >= (distancia / 2)
    }
    method velocidadMaxima() {
        return 5 + (energiaActual / 10)
    }
    method puedeCazar(distancia) {
        return self.puedeCorrer(distancia)
    }
    method cazar(unRaton, distancia) {
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comer(unRaton)
        }
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
