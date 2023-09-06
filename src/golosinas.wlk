
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
	//completar
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