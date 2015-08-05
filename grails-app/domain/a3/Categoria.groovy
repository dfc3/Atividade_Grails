package a3

class Categoria {
String categoria
static has_many = Tarefa
    static constraints = {
        categoria(unique: true, blank: false)
    }
}
