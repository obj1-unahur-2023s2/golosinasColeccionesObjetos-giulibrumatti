object mariano {
	const golosinas = []
	
	method comprar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = golosinas.size()
	
	method probarGolosinas(){
		golosinas.forEach({g => g.recibirMordisco()})
	}
	
	method sabores() = golosinas.map({g => g.sabor()}).asSet()
}
