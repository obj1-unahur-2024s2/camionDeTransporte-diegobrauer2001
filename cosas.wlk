object knightRider {

    const peso = 500

    const peligrosidad = 10

    method peso() = peso

    method peligrosidad() = peligrosidad 
}


object bumblebee {

    const peso = 800

    var peligrosidad = 0

    method peso() = peso 

    method transformarEnRobot() {
        
        peligrosidad = 30
    }

    method transformarEnAuto() {

        peligrosidad = 15
        
    }
}

object paqueteDeLAdrillos{

    var cantLadrillos=10
    
    const peligrosidad = 2 

    method peso() {

        return cantLadrillos * 2
    
    }



    method peligrosidad() = peligrosidad 



    method agregarMasLadrillos(cant) {
        
        cantLadrillos = cant
    }


}
object bateriaAntiaerea {
    var peso = 300
    var peligrosidad = 100

    method equiparMisiles() {

        peso = 200

        peligrosidad = 0
    }

    method sacarMisiles() {

        peso = 300

        peligrosidad = 100
    }

}
object contenedorPortuario {

    const cargaContenedor =[]

    const peligrosidad = 0

    method estaVacio() =  cargaContenedor.isEmpty()
    
    method agregarAContenedor(unaCarga) {

        cargaContenedor.add(unaCarga)
    
    }

    method peso() {
        
        return cargaContenedor.sum({unaCarga => unaCarga.peso()})
    }

    method peligrosidad() {
        
        if (self.estaVacio()){
            return peligrosidad
        }
        else{

        return cargaContenedor.max({unaCarga => unaCarga.peligrosidad()})

        }
    }


}

object residuosRadioactivos {

    var peso = 200
    
    const peligrosidad = 200

    method peso() = peso 

    method peligrosidad() = peligrosidad

}


object embalajeDeSeguridad{

    var peso =0
    var peligrosidad = 0

    method embalarUnaCarga(unaCarga) {

        peso = unaCarga.peso()

        peligrosidad = unaCarga.peligrosidad() / 2
    
    }
    method peso() = peso


    method peligrosidad() = peligrosidad

}