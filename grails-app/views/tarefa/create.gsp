<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
            <main id="taskPage">
                <section id="taskCreation">
                    <nav>
    		 <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a> 
		 <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link> 
			  </nav>
		 
		<div id="create-tarefa" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${tarefaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${tarefaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:tarefaInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
                            <f:with bean="tarefaInstance">
                        <f:field property="tarefa"/>
                        <f:field property="deadline"/>
                       <f:field property="categoria">
                            <g:select name="categoria" from="${['Pessoal', 'Profissional']}" noSelection="${['null':'Select One...']}" value="${tarefaInstance.categoria}"/>
                        </f:field>
                    </f:with>              
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
                
                </section>
                    </main>
	</body>
</html>
