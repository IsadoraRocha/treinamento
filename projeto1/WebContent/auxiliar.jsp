<html>
<head>

<title>Pagina Auxilair</title>

<link rel="stylesheet" href="css/layout.css" />
</head>
<body>
	<h1> Seja bem vindo a p�gina Sonner Sistemas</h1>
	<h2>Mensagem encaminhada do servlet</h2>
	<h3><%=request.getAttribute("mensagem")%></h3>
	<article>
		<table>
			<tr><td>op��o1;</td></tr>
			<tr><td><br>op��o2;</td></tr>
			<tr><td><br>op��o3;</td></tr>
			<tr><td><br>op��o4;</td></tr>
		</table>
	</article>
	
	<aside>
		<p>Parte de conte�do<br> da p�gina</p>
	</aside>
</body>
</html>