<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="br.com.sonner.treinamento.projeto1.model.Pessoa"%>
<%@page import="java.util.List"%>
<html lang = "pt-br">
<head>

<title>Pagina Auxilair</title>
<meta charset = "uft-8">
<script type="text/javascript" src = "JavaScript/javaScript.js"></script>
<meta name = "viewport" content = "width = device-width, initial-scale = 1">
<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/paginaPrincipal.css" />
</head>

<body>
	<nav class ="navbar navbar-default navbar-fixed-top" role = "navigation" style = "background-color: rgb(64, 0, 0);">
		<div class = "container-fluid">
			<div class = "navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"  data-target="#myNavbar">
					<span class = "icon-bar"></span>
					<span class = "icon-bar"></span>
					<span class = "icon-bar"></span>
				</button>
			</div>
				
			<div class = "collapse navbar-collapse" id = "myNavbar">	
				<ul class = "nav navbar-nav" >				
						<li><a href = "#op">Opções</a></li>
						<li><a href = "#apresentacao" class="tituloPagina">Apresentação<br>da Empresa</a></li>
						<li><a href = "#">Texto 3</a></li>
				</ul>					
			</div>
		</div>
	</nav>
	
	<div style = "display:block">
	<div class = "caursel-caption" style= "padding: 70px" align="center"><h1> Seja bem vindo a página Sonner Sistemas</h1></div>
	
	<!--  <div class="container">
  		<br>
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">	
	 		<ol class="carousel-indicators">
      			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      			<li data-target="#myCarousel" data-slide-to="1"></li>
      			<li data-target="#myCarousel" data-slide-to="2"></li>
      			<li data-target="#myCarousel" data-slide-to="3"></li>
    		</ol>
    
    		<div class="carousel-inner" role="listbox" align="center">
     			 
     			 <div class="item active">
       			 	<img src="http://www.freestockphotos.name/wallpaper-original/wallpapers/keyboard-and-coffee-on-a-desk-21.jpg" alt="Imagem 1" width="460" height="345">
      			</div>

      			<div class="item">
        			<img src="http://adlookat.com/admin/images/listing/Digital-Marketing-Company-In-India.jpg" alt="Imagem 2" width="460" height="345">
      			</div>
    
      			<div class="item">
      			  <img src="https://www.yourpaf.com/wp-content/uploads/2015/05/business-hand-shake.jpg" alt="Imagem 3" width="460" height="345">
    			</div>

    			 <div class="item">
    			   <img src="http://searchengineland.com/figz/wp-content/seloads/2015/01/answers-knowledge-puzzle-solution-ss-1920.jpg" alt="Imagem 4" width="460" height="345">
     			 </div>
    		</div>
    		
    	  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      		<span class="sr-only">Previous</span>
    	  </a>
    	  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      		<span class="sr-only">Next</span>
    	 </a>
    	</div>
    </div>-->
    
	<br><br>
	
		<div class = "row show-grig fundoTransparence" >
			<div class = "col-md-2" >
				<p id = "op"><br>Opção 1;<br>Opção 2;<br>Opção 3;<br>Opção 4;<br></p>
			</div> 
	
			<div class = "col-md-10" align="center" style = "border-left: 5px solid rgba(100,100,100, .1);" >
				<h2><br>Lista de Pessoas</h2>
				<table class = "table-striped" name = "tabelaDados">
			
				<%
				List<Pessoa> listaDePessoas  = (List<Pessoa>)request.getAttribute("listaDevalores");
				
				for(int i = 0; i < listaDePessoas.size(); i++){
				
					Pessoa pessoaCorrente = listaDePessoas.get(i);
				%>						
					<tr>
						<td><%=pessoaCorrente.getNome()%></td>
						<td><%=pessoaCorrente.getEmail()%></td>


						<td><input class = "botaoAuxiliar" type = "button" value = "Altera dado" onclick = "javascript:teste(<%=pessoaCorrente.getId()%>)"><br>
						<input class = "botaoAuxiliar" type = "button" value = "Deleta dado" onclick = "javascript:removeLinha(<%=pessoaCorrente.getId()%>)"></td>
					</tr>
			<% } %>
				
				</table>
			</div>
	
		</div>

<!--  
			<div class = "col-md-10" >
				<h2><br>Jeito 2</h2>
				<table align = "center" >
				<c:forEach var="pessoa" items="${listaDevalores}" >
					<tr>
						<td>${pessoa.nome}</td>
						<td>${pessoa.email}</td>
					</tr>
				</c:forEach>

				

				<c:forEach var="token" items="{1,2,3}" >
						${token}  
				</c:forEach>
		</div>
-->
			</div>
		
		<div align = "center"><h2>Inserir pessoa</h2><br><br>
			
			<form action ="insereAlteraPessoa" method = "post" onsubmit = "return semVirgula()" >
				<table>
				<tr>
					<td>Nome:</td>
					<td><input type = "text" name = "nome" onkeypress = "return semVirgula(event)"><br></td></tr>
				<tr>	
					<td>e-mail:</td>
					<td><input type = "email" name = "email"><br></td>
				</tr>
				</table>
			<input type = "submit" value = "gravar">							
			</form>
					
		</div>
		
	
		<div class = "col-md-12 fundoTransparence" style = "margin-top: 10px;">
			<p id = "apresentacao">Apresentação da empresa, junto a um texto qualquer</p><br><br>
		</div>
</body>
</html>


