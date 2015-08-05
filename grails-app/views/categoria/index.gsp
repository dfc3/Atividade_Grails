
<%@ page import="a3.Categoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
            <main id="taskPage">
                <section id="taskCreation">
                    <nav>
    		<a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
		<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				
                    </nav>	
		 
		<div id="list-categoria" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="categoria" title="${message(code: 'categoria.categoria.label', default: 'Categoria')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${categoriaInstance.id}">${fieldValue(bean: categoriaInstance, field: "categoria")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${categoriaInstanceCount ?: 0}" />
			</div>
		</div>
                </section>
                    </main>
	</body>
</html>
