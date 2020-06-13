import elementos.*

class Cucarachas {
	
	var property poblacion 
	var property pesoGrs
	
	
	method esTransmisora(){ return poblacion >= 10 }
	method nivelDeDanio(){ return poblacion / 2 }
	method pesoPromedio() { return poblacion / pesoGrs }
	method transmiteEnfermedades(){
		return self.pesoPromedio() >= 10 and self.esTransmisora()
	}
	method incrementarPorAtaque(){
		poblacion += poblacion * 0.10 
		self.pesoGrs(pesoGrs + 2)
	}
}

class Mosquitos inherits Cucarachas{
	
	override method nivelDeDanio(){ return poblacion }
	override method transmiteEnfermedades(){
		return self.poblacion() % 3 == 0 and self.esTransmisora()
	}
	
}

class Pulgas inherits Cucarachas{
		
	override method nivelDeDanio(){ return poblacion * 2 }
	override method transmiteEnfermedades(){ return poblacion >= 10 }
	
}

class Garrapatas inherits Pulgas{
			
	override method pesoPromedio() { return 5 }
	override method transmiteEnfermedades(){ return poblacion >= 10 }
	override method incrementarPorAtaque(){
		poblacion += poblacion * 0.20 }
}