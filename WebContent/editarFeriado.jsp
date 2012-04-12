<%@page import="java.util.ArrayList"%>
<%@page import="bean.Feriado"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editando o feriado</title>
<link href="css/bootstrap.css" rel="stylesheet">

</head>
<%
	Feriado f = ((ArrayList<Feriado>) request.getSession().getAttribute("feriados")).get(Integer.parseInt(request.getParameter("id")));
%>
<body>
	<h1>Editando Feriado</h1>
	<form method="post" action="EditaFeriadoServlet">
		<label>Nome do Feriado</label>
		<input type="text" name="nome" placeholder="Nome do Feriado" value="<%= f.getName() %>" />
		<label>Data do Feriado</label>
		<input type="text" name="data" value="<%= f.getDate() %>" placeholder="Data do Feriado" />
		<label>Abrangência do Feriado</label>
		<select name="type">
                <option <% if (f.getType().equals("Municipal")) {%>selected="selected"<%}%>value="Municipal">Municipal</option>
                <option <% if (f.getType().equals("Estadual")) {%>selected="selected"<%}%>value="Estadual">Estadual</option>
                <option <% if (f.getType().equals("Nacional")) {%>selected="selected"<%}%>value="Nacional">Nacional</option>
        </select><br/>
        <input type="hidden" name="id" value="<%=request.getParameter("id") %>"/>
        <input class="btn btn-success" type="submit" value="Salvar Feriado" />
	</form>
</body>
</html>