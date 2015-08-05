<%@ page import="a3.Tarefa" %>



<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'tarefa', 'error')} required">
	<label for="tarefa">
		<g:message code="tarefa.tarefa.label" default="Tarefa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tarefa" required="" value="${tarefaInstance?.tarefa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'deadline', 'error')} required">
	<label for="deadline">
		<g:message code="tarefa.deadline.label" default="Deadline" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deadline" precision="day"  value="${tarefaInstance?.deadline}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="tarefa.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${a3.Categoria.list()}" optionKey="id" required="" value="${tarefaInstance?.categoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'complete', 'error')} required">
	<label for="complete">
		<g:message code="tarefa.complete.label" default="Complete" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="complete" type="number" value="${tarefaInstance.complete}" required=""/>

</div>

