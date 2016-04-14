<html>
<head>

<title>Pagina Auxilair</title>

<link rel="stylesheet" href="css/layout.css" />
</head>
<body>
	<h1> Seja bem vindo a página Sonner Sistemas</h1>
	<h2>Mensagem encaminhada do servlet</h2>
	<h3><%=request.getAttribute("mensagem")%></h3>
	<article>
		<table>
			<tr><td>opção1;</td></tr>
			<tr><td><br>opção2;</td></tr>
			<tr><td><br>opção3;</td></tr>
			<tr><td><br>opção4;</td></tr>
		</table>
	</article>
	
	<aside>
		<p>Parte de conteúdo<br> da página</p>
	</aside>
</body>
</html>