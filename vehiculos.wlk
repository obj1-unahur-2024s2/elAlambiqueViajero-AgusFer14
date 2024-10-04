object alambiqueVeloz {
  var combustible = 10 

  method sufrirConsecuencias() {
    combustible -= 10
  }

  method combustible() = combustible

  method esRapido() = true  
}

object superChatarra {
  var combustible = 20
  var tieneMunicion = false 

  method sufrirConsecuencias() {
    tieneMunicion = !tieneMunicion
  }

  method combustible() = if(tieneMunicion) 50 else 20

  method esRapido() = not tieneMunicion
}

object antigualla {
  var combustible = 15
  var gansters = 4 

  method sufrirConsecuencias() {
    if(self.esRapido()){
        gansters = 1.max(gansters - 1)
    }
  }

  method combustible() = combustible

  method esRapido() = false
}

object superConvertible {
  var convertido = antigualla 

  method sufrirConsecuencias() {
    convertido = alambiqueVeloz
  }

  method combustible() = convertido.combustible()

  method esRapido() = convertido.esRapido()
}