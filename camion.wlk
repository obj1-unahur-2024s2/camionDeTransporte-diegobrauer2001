object camion {

    const carga = []


    method cargarCamion(unaCarga) {

        carga.add(unaCarga)

    }


    method descargarCamion(unaCarga) {

        carga.remove(unaCarga)
    
    }

    method pesoTotalDelCamion() {

        return carga.sum({unaCarga => unaCarga.peso()}) + 1000
    
    }

    method sonCargasImpares() {

        return carga.all({unaCarga => unaCarga.peso() % 2 != 0})

    
    }

    method buscarCargaPorPeso(unPeso) {

        return carga.find({unaCarga => unaCarga.peso() == unPeso})


    
    }

    method buscarPorNivelDePeligrosidad(unNivel) {

        return carga.find({unaCarga => unaCarga.peligrosidad() == unNivel})


    
    }


    method supertaNivelDePeligrosidad(unNivel) {

        return carga.filter({unaCarga => unaCarga.peligrosidad() > unNivel})

    
    }


    method superaNivelDepeligrosidadDeUnaCarga(unaCosa) {

        return carga.filter({unaCarga => unaCarga.peligrosidad() > unaCosa.peligrosidad()})

    
    }

    method estaExedidoDePesoMaximo() {

        return self.pesoTotalDelCamion() < 2500
    
    }


    method puedeCircularEnRuta(unNivel) {
        
        return self.estaExedidoDePesoMaximo() and self.superaElMaximoNivelDePeligrosidadDelViaje(unNivel)

    }

    method superaElMaximoNivelDePeligrosidadDelViaje(unNivelPeligrosidadViaje) {

        return  carga.all({unaCarga => unaCarga.peligrosidad() < unNivelPeligrosidadViaje})
    
    }


    method buscarEntre(vMin,vMax) {

        return carga.find({unaCarga => unaCarga.peso().between(vMin, vMax)})

}

    method laCargaMasPesada() {

        return carga.max({unaCarga => unaCarga.peso()})
        
    }

}