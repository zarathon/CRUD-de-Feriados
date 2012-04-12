<%@page import="java.util.ArrayList"%>
<%@page import="bean.Feriado"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excluindo o Feriado</title>
<link href="css/bootstrap.css" rel="stylesheet">
<%
	Feriado f = ((ArrayList<Feriado>) request.getSession().getAttribute("feriados")).get(Integer.parseInt(request.getParameter("id")));
%>
</head>
<body>
<h1>Você Tem Certeza Que Quer Exluir o Feriado?</h1>
<h3><%=f.toString()%></h3>
<a class="btn btn-success" href="ExcluiFeriadoServlet?id=<%=request.getParameter("id")%>">Sim</a>
<a class="btn btn-danger" href="index.jsp">Não</a>
</body>
</html>