function validaUsuario(){
			var x = document.forms["my forms"]["usuario"].value;
			var y = document.forms["my forms"]["senha"].value;
			if(x != "sonner sistemas"){
				alert("usuário inválido");
				return false;
			}
			
			if(y != "sonner"){
				alert("senha inválida");
				return false;
			}
			return true;	
}

function semVirgula(e){
			
			var nome=(window.event)?event.keyCode:e.which;
    		if((nome == 39) || (nome == 44) || (nome == 96)) 
    			return false;
   			 else
   			   return true;
}

funcion insere(){
		location.href = 
}

function teste(id){
			location.href = "alteraDados?id="+id;	
}

function removeLinha(id){
		location.href = "RemoveLinha?id="+id;

}