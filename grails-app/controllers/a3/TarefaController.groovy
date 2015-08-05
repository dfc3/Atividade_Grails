package a3
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TarefaController {

    static scaffold = true
        
    @Transactional
    def complete(Tarefa tarefaInstance) {
        if (tarefaInstance == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tarefaInstance.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tarefaInstance.errors, view:'index'
            return
        }
        tarefaInstance.complete = 1
        tarefaInstance.save flush:true
        redirect action: "index"
    }
}
