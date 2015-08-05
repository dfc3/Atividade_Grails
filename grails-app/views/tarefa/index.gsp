
<%@ page import="a3.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
            <main id="taskPage">
                <section id="taskCreation">
                    <nav>
    		<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                <a href="categoria/create">Adicionar Categorias</a>
                    </nav>
                	
                
		 <div id="list-tarefa" class="content scaffold-list" role="main">
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="tblTasks">
                <colgroup>
                    <col width="30%">
                    <col width="15%">
                    <col width="15%">
                    <col width="40%">
                </colgroup>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Deadline</th>
                        <th>Categoria</th>
                        <th>Ações</th>
                    </tr>
                </thead>
               
				 
                                
                                 <tbody>
                    <g:each in="${tarefaInstanceList}" var="tarefaInstance">                                    
                    <tr class=" ${(tarefaInstance.complete == 1 ? 'taskCompleted' : 'null')} 
                                ${(tarefaInstance.deadline < new Date() - 1 ? 'overdue' : 'null')}                                
                                ${((((tarefaInstance.deadline.time - (new Date()-1).time) / (24 * 60 * 60 * 1000)) <= 5) && 
                                   (((tarefaInstance.deadline.time - (new Date()-1).time) / (24 * 60 * 60 * 1000)) >= 0) ? 'warning': 'null')}">                      
                        <td>${tarefaInstance.tarefa} </td>                        
                        <td><g:formatDate format="dd-MM-yyyy" date="${tarefaInstance.deadline}"/></td>                        
                        <td>${tarefaInstance.categoria}</td>                        
                        <td>                            
                            <g:form resource="${tarefaInstance}" method="DELETE">
                            <fieldset class="buttons" style="background-color: transparent!important; -webkit-box-shadow: none!important;">
                                <g:if test="${tarefaInstance.complete == 0}">                                
                                <g:link class="edit" action="edit" resource="${tarefaInstance}" disabled="disabled">
                                <g:message code="default.button.edit.label" default="Edit" />
                                </g:link>
                                <g:link class="complete"  action="complete" resource="${tarefaInstance}">
                                <g:message code="default.button.complete.label" default="Completar" />
                                </g:link>
                                </g:if>
                                <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>
                        </td>
                     </tr>
                     </g:each> 

                </tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tarefaInstanceCount ?: 0}" />
			</div>
                        <footer>Total de Tarefas: <span id="taskCount">${tarefaInstanceCount}</span></footer>
		</div>
                </section>
                    </main>
	</body>
</html>
