import vehiculos.*
import lugares.*


object carrera {
  const inscriptos = []
  const rechazados = []
  var lugarDeCarrera = paris

  method sePuedeInscribir(vehiculo) = lugarDeCarrera.restricciones(vehiculo)

  method inscribir(vehiculo) { if(self.sePuedeInscribir(vehiculo)){
        inscriptos.add(vehiculo)
    }else{
        rechazados.add(vehiculo)
    }
  }

  method replanificacion(nuevoLugar) {
    lugarDeCarrera = nuevoLugar
    self.reincripcion()
  }

  method reincripcion() {
    //const todosLosAutos = inscriptos + rechazados
    const todosLosAutos = []
    todosLosAutos.addAll(inscriptos)
    todosLosAutos.addAll(rechazados)
    inscriptos.clear()
    rechazados.clear()
    todosLosAutos.forEach({v => self.inscribir(v)})
  }
}