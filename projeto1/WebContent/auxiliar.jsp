<!DOCTYPE html>
<html lang = "pt-br">
<head>

<title>Pagina Auxilair</title>
<meta charset = "uft-8">
<meta name = "viewport" content = "width = device-width, initial-scale = 1">
<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/layout.css" />
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
	<div class="container">
  		<br>
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">	
	 		<ol class="carousel-indicators">
      			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      			<li data-target="#myCarousel" data-slide-to="1"></li>
      			<li data-target="#myCarousel" data-slide-to="2"></li>
      			<li data-target="#myCarousel" data-slide-to="3"></li>
    		</ol>
    
    		<div class="carousel-inner" role="listbox" align="center">
     			 <div class = "caursel-caption" style= "padding: 70px" align="center"><h1> Seja bem vindo a página Sonner Sistemas</h1></div>
     			 <div class="item active">
       			 	<img src="http://images.forwallpaper.com/files/thumbs/preview/101/1016536__blue-abstract-technology-background-with_p.jpg" alt="Imagem 1" width="460" height="345">
      			</div>

      			<div class="item">
        			<img src="http://il6.picdn.net/shutterstock/videos/3342122/thumb/1.jpg?i10c=img.resize(height:160)" alt="Imagem 2" width="460" height="345">
      			</div>
    
      			<div class="item">
      			  <img src="https://image.freepik.com/vetores-gratis/fundo-claro-transparente_98814.jpg" alt="Imagem 3" width="460" height="345">
    			</div>

    			 <div class="item">
    			   <img src="http://www.netsystemtecnologia.com.br/emmanutencao/images/mundo.jpg" alt="Imagem 4" width="460" height="345">
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
    </div>
    
	<br><br>
	
		<div class = "row show-grig fundoTransparence" >
			<div class = "col-md-2" style = "border-right: 5px solid rgba(100,100,100, .1);" >
				<p id = "op"><br>Opção 1;<br>Opção 2;<br>Opção 3;<br>Opção 4;<br></p>
			</div> 
	
			<div class = "col-md-10" >
				<h2><br>Parte de texto da pagina</h2>
			</div>
	
		</div>
	
		<div class = "col-md-12 fundoTransparence" style = "margin-top: 10px;">
			<p id = "apresentacao">Apresentação da mepresa, junto a um texto qualquer</p>
		</div>
		
		
	</div>
</body>
</html>


