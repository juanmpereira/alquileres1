import artefactos.*

class Departamento {
  const superficie
  const habitaciones
  var property barrio
   var artefactos
   method habitaciones()=habitaciones
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
    	return artefactos.any({a=>a.calefaccion()})
    }
    method cantidadAltoConsumo (){
    	return artefactos.filter({a=>a.consumo()>400}).size()
    }
    }
    const depto1=new Departamento(superficie=120,habitaciones=5,barrio="hurlingham",artefactos=[aire2,mesa2,estufaDeCuarzo])
    
    //como hacer los test para clases.
    //donde pongo los ejemplos de deptos
    