class Barrio {
	
	const elementos = []
	
	method radicar(unaCasa){
		elementos.add(unaCasa)
	}
	
	method erradicar(unaCasa){
		elementos.remove(unaCasa)
	}
	
	
	method cantidadDeBuenos(){
		return elementos.count({ elem => elem.esBueno() })
	}
	
	method cantidadDeNoBuenos(){
		return elementos.count({elem => not elem.esBueno()})
	}
	
	method esCopado(){
		return self.cantidadDeNoBuenos() < self.cantidadDeBuenos() 
	}
	
	method sufirAtaqueDe_(unaPlaga){
		elementos.forEach({e=>e.sufrirAtaqueDe_(unaPlaga)})
	}
	
}
