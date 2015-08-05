package a3

class Tarefa {
        String tarefa
	Date deadline
	Integer complete = 0
        Categoria categoria
        
        static hasOne = Categoria
        static constraints = {
    	tarefa (blank: false)
    	deadline (blank: false)        
        complete (display: false)
    }
   
    static mapping = {
    	sort deadline: "desc"
	}
}
