
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
		<g:link class="create" action="create">Adicionar Categoria</g:link>
				
                    </nav>	
		 
		<div id="list-categoria" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="tblTasks">
                <colgroup>
                    <col width="70%">
                    <col width="20%">
                </colgroup>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Ações</th>
                    </tr>
                </thead>
				<tbody>
				<!--<g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
				 <td><g:link action="edit" id="${categoriaInstance.id}">${fieldValue(bean: categoriaInstance, field: "categoria")}</g:link></td>
				 </g:each>-->
                                <g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">                                    
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">                    
                        <td>${categoriaInstance.categoria} </td>                
                                            
                        <td>                            
                            <g:form resource="${categoriaInstance}" method="DELETE">
                            <fieldset class="buttons" style="background-color: transparent!important; -webkit-box-shadow: none!important;">
                                                              
                                <g:link class="edit" action="edit" resource="${categoriaInstance}">
                                <g:message code="default.button.edit.label" default="Edit" />
                                </g:link>  &nbsp;&nbsp;                       
                                <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>
                        </td>
                     </tr>
                     </g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${categoriaInstanceCount ?: 0}" />
			</div>
                        <footer>Total de Categorias: <span id="taskCount">${categoriaInstanceCount}</span></footer>
		
		</div>
                </section>
                    </main>
	</body>
</html>
