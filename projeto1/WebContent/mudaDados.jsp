<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="br.com.sonner.treinamento.projeto1.model.Pessoa"%>
<%@page import="java.util.List"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Altera dados</title>

<meta charset = "uft-8">
<script type="text/javascript" src = "JavaScript/javaScript.js"></script>
<meta name = "viewport" content = "width = device-width, initial-scale = 1">
<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/mudaDadosCSS.css" />

</head>
<body>



<div class = "panel panel-edfaut">
	<form class = "panel-body" action ="mudaDados" method = "post">
		<%  Pessoa pessoa = (Pessoa)request.getAttribute("pessoaEditada");
			Pessoa novaPessoa = pessoa;
		%>	
		<table>
	  	<input type=hidden name=id value="<%=novaPessoa.getId()%>" /> 
			<tr>
				<td>Nome:</td>
				<td><input type = "text" name = "nome" value = "<%=novaPessoa.getNome()%>"><br></td></tr>
				<tr>	
				<td>e-mail:</td>
				<td><input type = "text" name = "email" value = "<%=novaPessoa.getEmail()%>"><br></td>
			</tr>
		</table>
		<br><div class = "boxCentraliza"><input type = "submit" value = "Gravar" ></div>							
	</form>
</div>

</body>
</html>