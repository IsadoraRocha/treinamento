<html>
<head>
<title>Primeira Página</title>

<link rel="stylesheet" href="css/index.css" />
<script type="text/javascript" src = "JavaScript/javaScript.js"></script>
</head>
<body>

	<header>
		<h1 class = "linha"> Minha Pagina</h1>
	</header>
	
      <section id = "boxTop">
      	<div>
      		<p style= "font-size: 30px" class = "linhaDeConteudo"> Texto de teste para a primeira parte da página</p>
      		<div class= "boxGeral">
      		<button id = "botao" align = "center" type = "button" onclick = "alert('Teste Concluído')" >   Teste  </button>
      		</div> 
      	</div>	
      </section>
      
       <article style = "background: rgba(255, 157, 248, 0.2)">
       	
       	<h2 style = "top: 2%"><ins>Segunda parte da página</ins></h2>
       	<br/>
       	<table class = "tabela center">
       		<tr>
       			<td><image src ="http://png.clipart.me/previews/f16/3d-boy-thumbs-up-20961.jpg" width = "60" height = "60" aling = "left" alt = "Joia" float = "left"/></td>
       			<td>Imagem para <br/> teste de jóia</td>
       	
       			<td><image src ="http://ccbela.files.wordpress.com/2012/07/boneco-aniversariante2.png" width = "70" height = "70" aling = "left" alt = "Festa"/></td>
       			<td>Imagem para <br/> teste de festa</td>
       	
       			<td><image src ="http://regianemartins.com.br/wp-content/uploads/2015/07/boneco-contador-do-tempo1.jpg" width = "60" height = "70" aling = "left" alt = "relógio"/></td>
       			<td>Imagem de <br/> horas</td>
       		</tr>
       	</table>
       </article>
       
       <article id = "fundo">
       		<h2 class = "center"><strong>Terceira parte da página: login</strong></h2>
       		<div>
       			<form name = "my forms" class = "center"  action="servletAutenticacao"  onsubmit = "return validaUsuario()" method="post">
       				<div id = "boxLogin" clas = "center" >
       					<table id = "login" style = "font-size: 150%" class = "center">
       					<tr>
       						<td>Usuario:</td>
       						<td><input type = "text" name = "usuario" ></td>
       					</tr>
       					<br><br>
           				    <td>Senha:</td>
       				 		<td><input type = "password" name = "senha"></td>
       					</table>				 		
       				 		<br><br><br>
       					<input type = "submit" value ="Entra"  style = "font-size: 110%"  >
       				</div>
       			</form>
       		</div>
       
       </article>
       
       <footer style = "background: rgba(255, 157, 248, 0.2)" class = "linha">
       		<p>Hora de dar tchau!!</p>
       </footer>
     
</body>
</html>

