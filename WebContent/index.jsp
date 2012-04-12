<%@page import="bean.Feriado"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Feriado</title>
<link href="css/bootstrap.css" rel="stylesheet">
</head>
<%
if (request.getSession().getAttribute("feriados") == null){
	request.getSession().setAttribute("feriados", new ArrayList<Feriado>());
}
ArrayList<Feriado> feriados = (ArrayList<Feriado>) request.getSession().getAttribute("feriados");
%>
<body>
	<h1>Lista de Feriados</h1>
	<a class="btn btn-primary" href="adicionarFeriado.jsp">Adicionar um novo feriado</a>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Data</th>
				<th>Abrangência</th>
				<th>Editar</th>
				<th>Excluir</th>
			</tr>
		</thead>
		<tbody>
			<% for(Feriado f : feriados){ %>
				<tr>
					<td><%=f.getName() %></td>
					<td><%=f.getDate() %></td>
					<td><%=f.getType() %></td>
					<td><a class="btn btn-warning" href="editarFeriado.jsp?id=<%=feriados.indexOf(f)%>">Clique para editar</a></td>
					<td><a class="btn btn-danger" href="excluirFeriado.jsp?id=<%=feriados.indexOf(f)%>">Clique para excluir</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
	
</body>
</html>