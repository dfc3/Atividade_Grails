package a3

class Categoria {
String categoria
    static constraints = {
        categoria(unique: true, blank: false)
    }
    String toString(){
    	return categoria
    }
    
}
