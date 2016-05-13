package br.com.sonner.treinamento.projeto1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.sonner.treinamento.projeto1.model.Pessoa;

/**
 * Servlet implementation class paginaPrincipal
 */

@WebServlet("/paginaPrincipal")
public class PaginaPrincipal extends HttpServlet {
	
	ConectaBanco bancoDeDados = new ConectaBanco();
       
    public PaginaPrincipal() {
    	
//    	br.com.sonner.treinamento.projeto1.paginaPrincipal
        
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Conectar com o banco de dados
		doPost(request, response);
		
	}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			try {
				Connection connection = bancoDeDados.conecta();
				//Buscar a informacao no banco		
				ResultSet resultSet = connection.createStatement().executeQuery("select id,nome,cpf,email,ativo from Pessoa");
				List<Pessoa> listaDePessoas = new LinkedList<>();
				while(resultSet.next())	{

					String nome = resultSet.getString("nome");
					String email = resultSet.getString("email");
					boolean ativo = resultSet.getBoolean("ativo");
					int id = resultSet.getInt("id");
					
					Pessoa pessoa = new Pessoa();
					pessoa.setNome(nome);
					pessoa.setEmail(email);
					pessoa.setAtivo(ativo);
					pessoa.setId(id);
					listaDePessoas.add(pessoa);
				
				
				}
				
				//Disponibilizar a informacao para o jsp
				request.setAttribute("listaDevalores" , listaDePessoas);
				request.getRequestDispatcher("paginaPrincipal.jsp").forward(request, response);
				
			//Fechar a conexao com o banco
			connection.close();
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
	
	
