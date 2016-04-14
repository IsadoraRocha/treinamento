package br.com.sonner.treinamento.projeto1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletAutenticacao
 */
@WebServlet("/servletAutenticacao")
public class ServletAutenticacao extends HttpServlet {
       
    public ServletAutenticacao() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PrintWriter out = response.getWriter();
//		out.append("Served at: ").append(request.getContextPath());
		
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");

		//tomar as suas decisoes
//		out.append("<br/>Usuario Informado: ").append( usuario );
//		out.append("<br/>Senha informada: ").append( senha );
		
		if(usuario.equals("usuario1")){
//			encaminha para a pagina 1
			request.setAttribute("mensagem", "Mensagem para ser utilizada no jsp");
			request.getRequestDispatcher("auxiliar.jsp").forward(request, response);
		}else{
//			encaminha para a pagina 2
			request.getRequestDispatcher("auxiliar.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
