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
	
	method gustosFaltantes(gustosDeseados) = gustosDeseados.asSet().difference(self.sabores())
	
	method buscarGolosinas(closure) = golosinas.filter(closure)
	
	/*
	 * (1..5) 1 hasta 5
	 * (1..5).forEach({ i => console.println(i)})
	 * const lista = []
	 * (1..5).forEach({ i => lista.add(1.randomUpTo(101).truncate(0)) })
	 * se genero una lita aleatoria
	 * (1..lista.size() - 1).all( i => lista.get(i - 1) <= lista.get(i)}) 
	 * te indica si la lista esta ordenada
	 * 
	 * lista.sortBy({a,b => a <= b}) para ordenar una lista
	 * 
	 * 
	 */
	
	
		
	
		
	
}
