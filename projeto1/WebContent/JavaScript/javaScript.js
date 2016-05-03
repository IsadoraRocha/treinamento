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