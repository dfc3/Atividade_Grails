
<%@ page import="a3.Categoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<main id="taskPage">
                <section id="taskCreation">
                    <nav>
    		 <a class="home" href="${createLink(uri: '/')}">Principal</a>
		 <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
		  <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			
                    </nav>	
             
		<div id="show-categoria" class="content scaffold-show" role="main"> 
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list categoria">
			
				<g:if test="${categoriaInstance?.categoria}">
				
					<span id="categoria-label" class="property-label"><g:message code="categoria.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${categoriaInstance}" field="categoria"/></span>
					
				
				</g:if>
			
			</ol>
			<g:form url="[resource:categoriaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${categoriaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
                </section>
                    </main>
	</body>
</html>
