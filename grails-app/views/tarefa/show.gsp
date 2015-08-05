
<%@ page import="a3.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
             <main id="taskPage">
                <section id="taskCreation">
                    <nav> <g:link class="list" action="index">Ver Tarefas</g:link>
				<g:link class="create" action="create">Adicionar Tarefa</g:link>
			</nav>
		 
		<div id="show-tarefa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tarefa">
			<br/>
				<g:if test="${tarefaInstance?.tarefa}">
				 
					<span id="tarefa-label" class="property-label"><g:message code="tarefa.tarefa.label" default="Tarefa" /></span>
					
						<span class="property-value" aria-labelledby="tarefa-label"><g:fieldValue bean="${tarefaInstance}" field="tarefa"/></span>
					
				 
				</g:if><br/>
			
				<g:if test="${tarefaInstance?.deadline}">
				 
					<span id="deadline-label" class="property-label"><g:message code="tarefa.deadline.label" default="Deadline" /></span>
					
						<span class="property-value" aria-labelledby="deadline-label"><g:formatDate date="${tarefaInstance?.deadline}" /></span>
					
				 
				</g:if><br/>
			
				<g:if test="${tarefaInstance?.categoria}">
			 
					<span id="categoria-label" class="property-label"><g:message code="tarefa.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${tarefaInstance?.categoria?.id}">${tarefaInstance?.categoria?.encodeAsHTML()}</g:link></span>
					
				 
				</g:if><br/>
			
			</ol>
			<g:form url="[resource:tarefaInstance, action:'delete']" method="DELETE"><br/>
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tarefaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
                 </section>
                    </main>
	</body>
</html>
