object mariano {
	const golosinas = []
	
	method comprar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = golosinas.size()
	
	method tieneLaGolosina(unaGolosina){
		golosinas.contains(unaGolosina)
	}
	
	method probarGolosinas(){
		golosinas.forEach({g => g.recibirMordisco()})
	}
	
	method sabores() = golosinas.map({g => g.sabor()}).asSet()
	
	method hayGolosinaSinTACC() = golosinas.any({g => g.libreGluten()})
	
	method preciosCuidados() = golosinas.all({g => g.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = golosinas.find({g => g.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = golosinas.filter({g => g.sabor() == unSabor})
	
	method pesoGolosinas() = golosinas.sum({g => g.peso()})
	
	method golosinaMasCara() = golosinas.max({g => g.precio()})
	
	
		
	
		
	
}
