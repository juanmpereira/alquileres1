import departamento.*
object estufaDeCuarzo {
	var property altura = 60
	method consumo()=700
	method calor()= true
	
}

class AireAcondicionado{
	const frigorias 
	var friocalor
	method consumo(){
		return frigorias / 4
	}
	method altura(){
		return 40 + (frigorias / 100)
	
	}
	method calor()= friocalor
	
}
const aire1 = new AireAcondicionado(frigorias= 16,friocalor= true)
const aire2 = new AireAcondicionado(frigorias=2400,friocalor=true )

class Mesa{
	const alturaPatas
	const bordeLuminoso
	method consumo(){
		if (bordeLuminoso)
		return 80
		
		return 0
	}
	method altura(){
		if(bordeLuminoso)
		return alturaPatas+25
		
		return alturaPatas + 20
	}
	method calor()=false
}
const mesa1 = new Mesa(alturaPatas=10,bordeLuminoso= true)
const mesa2= new Mesa(alturaPatas=80,bordeLuminoso=true)
