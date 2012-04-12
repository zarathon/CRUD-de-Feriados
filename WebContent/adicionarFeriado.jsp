<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adicionando um novo feriado</title>
<link href="css/bootstrap.css" rel="stylesheet">

</head>
<body>
	<h1>Adicionando Um Novo Feriado</h1>
	<form method="post" action="AdicionaFeriadoServlet">
		<label>Nome do Feriado</label>
		<input type="text" name="nome" placeholder="Nome do Feriado" />
		<label>Data do Feriado</label>
		<input type="text" name="data" placeholder="Data do Feriado" />
		<label>Abrangência do Feriado</label>
		<select name="type">
                <option value="Municipal">Municipal</option>
                <option value="Estadual">Estadual</option>
                <option value="Nacional">Nacional</option>
        </select><br/>
        <input class="btn btn-success" type="submit" value="Adicionar Feriado" />
	</form>
</body>
</html>