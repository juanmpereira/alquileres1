import departamento.*
import artefactos.*
class Inmobiliaria {
	var property deptos
	var property barrios=[]
	method deptosFamiliares(){
	return deptos.filter({d=>d.habitaciones()>=3})
	}
	method barrios(){
  	return deptos.forEach({d=>barrios.add(d.barrio())})
	}
	//deberia ver como hacer para que no se repitan
	method toleraInvierno(){
		return deptos.any({d=>d.tieneCalefa()})
	}
	method certificaBajoConsumo(cant){
		return deptos.all({d=>d.consumoElectrico()<=cant})
	}
}
const inmo1= new Inmobiliaria(deptos=[depto1])