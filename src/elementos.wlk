class Hogar{
	
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno(){
		return nivelDeMugre <= confort / 2 
	}
	
	method sufrirAtaqueDe_(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDanio()
		unaPlaga.incrementarPorAtaque()   
	}
	
}

class Huerta{
	var property capacidadDeProduccion = 0
	const nivelDeProduccion = 120
	
	method esBueno(){
		return capacidadDeProduccion > nivelDeProduccion
	}
	method sufrirAtaqueDe_(unaPlaga){
		capacidadDeProduccion -= unaPlaga.nivelDeDanio() * 0.10
		if (unaPlaga.transmiteEnfermedades()){
			capacidadDeProduccion -= 10
		}
		unaPlaga.incrementarPorAtaque()
	}
}

class Mascota {
	
	var property nivelDeSalud = 0
	
	method esBueno(){
		return nivelDeSalud > 250
	}
	method sufrirAtaqueDe_(unaPlaga){
		if (unaPlaga.transmiteEnfermedades()){
		nivelDeSalud -= unaPlaga.nivelDeDanio()}
		unaPlaga.incrementarPorAtaque()
	}
}
