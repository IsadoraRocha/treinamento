package br.com.sonner.treinamento.projeto1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.sonner.treinamento.projeto1.model.Pessoa;

@WebServlet("/insereAlteraPessoa")
public class InsereAlteraPessoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ConectaBanco bancoDeDados = new ConectaBanco();
    Connection connection;
 
    public InsereAlteraPessoa() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	
		String ID = request.getParameter("id");
		int id = Integer.parseInt(ID);
        
        try{
        	
        	bancoDeDados.conecta();
        	
        	Statement st  = connection.createStatement();
        	
        	ResultSet rs = 	st.executeQuery("select nome, email from Pessoa where id = "+id);
        	if(rs.next()){
        		
        		Pessoa pessoa = new Pessoa();
        		pessoa.setId(id);
        		pessoa.setNome(rs.getString("nome"));
        		pessoa.setEmail(rs.getString("email"));
        		request.setAttribute("pessoaEditada", pessoa);
        		
        	}
        	       	
        	
    		request.getRequestDispatcher("insereAlteraPessoa.jsp").forward(request, response);
    		connection.close();
        	
        	
        	
        }catch (Exception e) {
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nome = request.getParameter("nome"); 
		String email = request.getParameter("email");
		
		try{
			bancoDeDados.conecta();
			
			String ID = request.getParameter("id");
			Statement st  = connection.createStatement();

			String query = null;
			
			if(ID == null){
				 query ="Insert into Pessoa (nome,email)  values('"+nome+"','"+email+"')";
//				st.executeUpdate(query);
			
			}else{
				int id = Integer.parseInt(ID);
				query ="Update Pessoa set nome ='"+nome+"', email = '"+email+"' where id = "+id;
			}
			st.executeUpdate(query);
			
			response.sendRedirect("paginaPrincipal");
			connection.close();

			//			request.getRequestDispatcher("servletAutenticacao").forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
		}		
		
	}
}
