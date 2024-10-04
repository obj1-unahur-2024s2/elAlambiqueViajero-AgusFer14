import vehiculos.*


object paris {
  method recuerdo() = "Llavero de torre effiel"

  method restricciones(unVehiculo) = unVehiculo.combustible() >= 10
}

object buenosAires {
  var presidente = "Peron"

  method recuerdo() = if(presidente == "Peron") "Mate con yerba" 
    else "Mate sin yerba"

  method cambiarPersidente(nuevoPersidente) {
    presidente = nuevoPersidente
  }

  method restricciones(unVehiculo) = unVehiculo.esRapido()
}

object bagdad {
  var anio = 2024

  method recuerdo() { if(anio < 1945){
    "Petroleo"
  }else if(anio.between(1946, 1999)){
    "Armas"
  }else{
    "Jardines de babilonia"
  }
  }

  method anioActual(nuevoAnio) {
    anio = nuevoAnio
  }

  method restricciones(unVehiculo) = true
}

object lasVegas {
  var paisConmemorado = paris

  method recuerdo() = paisConmemorado.recuerdo()

  method conmemorar(pais) {
    paisConmemorado = pais
  }

  method restricciones(unVehiculo) = paisConmemorado.restricciones(unVehiculo)
}

object roma {
  var papa = "Francisco" 

  method recuerdo() = "Foto con " + papa

  method restricciones(unVehiculo) = false

  method cambiarPapa(nuevoPapa) {
    papa = nuevoPapa
  }
}