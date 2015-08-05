package a3

class Tarefa {
        String tarefa
	Date deadline
	Integer complete = 0
        Categoria categoria
        
        static belongsTo = Categoria
        static constraints = {
    	tarefa (blank: false)
    	deadline (blank: false)
    }
         
   def toArray() {
    	return [ tarefa: this.tarefa, deadline: this.deadline.format('yyyy-MM-dd'), complete: this.complete, categoria_nome: this.categoria.categoria, categoria: this.categoria.id]
    }
    static mapping = {
    	sort deadline: "desc"
	}
}
