import departamento.*
import artefactos.*

class Inmobiliaria {
	var property deptos=[]
	
	method deptosFamiliares(){
		return deptos.filter({d=>d.habitaciones()>=3})
	}
	
	method barrios(){
  		var aux= deptos.map({d=>d.barrio()})
  		return aux.asSet()
	}	
	
	//como funciona el asSet. por que me esta dando mal
	method toleraInvierno(){
		return deptos.any({d=>d.tieneCalefa()})
	}
	
	method certificaBajoConsumo(cant){
		return deptos.all({d=>d.consumoElectrico()<=cant})
	}
	
	method barrioDeptoMasGrande(){
		return self.deptoMasGrande().barrio()
	}
	method deptoMasGrande(){
		return deptos.max({d=>d.superficie()})
	}
	method cantMasDe2Accesorios(){
		return self.deptosMayor2().size()
	}
	method deptosMayor2(){
		return deptos.filter({d=>d.artefactos().size()>2})
	}
	method deptosCompactados(){
		return deptos.filter({d=>d.superficie()<70})
	}
	method consumoTotalCompactados(){
	return self.deptosCompactados().sumlist({d=>d.consumoElectrico()})
	}
	method sonMismoBarrio(depto){
		return deptos.filter({d=>d.mismoBarrio(depto)})
	}
//	method noDifierenMasDe10(depto){
//		return deptos.filter({d=>d.menos10Metros(depto)})
//	}
	method sonCompatibles(depto){
		return self.sonMismoBarrio(depto).filter({d=>d.menos10Metros(depto)})
	}
}
