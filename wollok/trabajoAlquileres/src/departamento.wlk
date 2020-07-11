import artefactos.*

class Departamento {
  const superficie
  const habitaciones
  var property barrio
   var property artefactos
   method habitaciones()=habitaciones
   method superficie()=superficie
   method esEspacioso(){
   	if (habitaciones <= 2)
   	return superficie > 45
   	
   	return superficie > 75
   }
  	method consumoElectrico(){
  		return (habitaciones*300)+ self.consumoArtefactos()
  	}
	method accesorioMasAlto(){
		return artefactos.max({a=>a.altura()})
	}
    method consumoArtefactos(){
    return artefactos.sum({a=>a.consumo()})
    }
    method tieneCalefa(){
    	return artefactos.any({a=>a.calor()})
    }
    method cantidadAltoConsumo (){
    	return artefactos.filter({a=>a.consumo()>400}).size()
    }
    method mismoBarrio(depto){
    	return self.barrio()==depto.barrio()
    }
    method restaSuperficies(depto){
    	return self.superficie()-depto.superficie()
    }
    method menos10Metros(depto){
    if (self.restaSuperficies(depto)>=0)
        return self.restaSuperficies(depto)<=10
     else 
        return self.restaSuperficies(depto)>=-10
    }
    }
    