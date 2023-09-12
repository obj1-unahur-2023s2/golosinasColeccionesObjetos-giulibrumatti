
object bombon {
	var peso = 15
	
	method precio() = 5
	
	method peso() = peso
	
	method sabor() = "frutilla"
	
	method libreGluten() = true
	
	method recibirMordisco(){
		peso = (peso * 0.8) - 1
	}
	
	
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	
	method sabor() = "chocolate"
	
	method libreGluten() = false
	
	method recibirMordisco(){
		peso = (peso * 0.8) 
	}
}

object pastillaTutiFrutti{
	var peso = 5
	var property libreGluten = false
	const sabores = ["frutilla", "chocolate", "naranja"]
	var contador = 0
	
	method peso() = peso
	
	method precio() = if(libreGluten){7}else{10}
	
	method sabor() = sabores.get(contador % sabores.size())
	
	method recibirMordisco(){
		peso = (peso * 0.8) - 1
		contador++
	}
}

object caramelo{
	var peso = 5
	
	method precio() = 1
	
	method sabor() = "frutilla"
	
	method libreGluten() = true
	
	method recibirMordisco(){
		peso = peso - 1
	}
}

object chupetin{
	var peso = 7
	
	method precio() = 2
	
	method sabor() = "naranja"
	
	method libreGluten() = true
	
	method recibirMordisco(){
		
		if(peso > 2){
			peso = (peso * 0.9)
		}
	}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	
	method sabor() = "vainilla"
	
	method libreGluten() = false
	
	method recibirMordisco(){
		
		if(peso > 70){
			peso = (peso * 0.5)
		}else{
			peso = (peso * 0.25)
		}
	}
}

object chocolatin{
	var peso
	var pesoInicial
	
	method pesoInicial(nuevoPeso){
		pesoInicial = nuevoPeso
		peso = nuevoPeso
	}
	
	method precio() = 0.50 * pesoInicial
	
	method sabor() = "chocolate"
	
	method libreGluten() = false
	
	method recibirMordisco(){
		peso = peso - 2
	}
}

object golosinaBaniada{
	var golosinaDeBase
	var pesoBaniado = 4
	
	method golosinaDeBase(nuevaGolosina){
		golosinaDeBase = nuevaGolosina
	}
	
	method peso() = golosinaDeBase.peso() + pesoBaniado
	
	method precio() = golosinaDeBase.precio() + 2
	
	method sabor() = golosinaDeBase.sabor()
	
	method libreGluten() = golosinaDeBase.libreGluten()
	
	method recibirMordisco(){
		golosinaDeBase.recibirMordisco()
		pesoBaniado = 0.max(pesoBaniado - 2)
	}
}

