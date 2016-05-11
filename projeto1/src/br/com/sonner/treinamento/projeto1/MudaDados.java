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

@WebServlet("/mudaDados")
public class MudaDados extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public MudaDados() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	
		String ID = request.getParameter("id");
		int id = Integer.parseInt(ID);
        
        try{
        	
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection connection = DriverManager.getConnection("jdbc:mysql://10.1.1.16:3306/agritap","root","sicsadm");
        	
        	Statement st  = connection.createStatement();
        	
        	ResultSet rs = 	st.executeQuery("select nome, email from Pessoa where id = "+id);
        	if(rs.next()){
        		
        		Pessoa pessoa = new Pessoa();
        		pessoa.setId(id);
        		pessoa.setNome(rs.getString("nome"));
        		pessoa.setEmail(rs.getString("email"));
        		request.setAttribute("pessoaEditada", pessoa);
        		
        	}
        	       	
        	
    		request.getRequestDispatcher("mudaDados.jsp").forward(request, response);
    		connection.close();
        	
        	
        	
        }catch (Exception e) {
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("id");
		int id = Integer.parseInt(ID);
		
		String Nome = request.getParameter("nome"); 
		String Email = request.getParameter("email");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://10.1.1.16:3306/agritap","root","sicsadm");
			Pessoa pessoa = new Pessoa();
			pessoa.setNome(Nome);
			pessoa.setEmail(Email);
			
			
			Statement st  = connection.createStatement();
         	String queryUpdate ="Update Pessoa set nome ='"+Nome+"', email = '"+Email+"' where id = "+id;
        	st.executeUpdate(queryUpdate);
			connection.close();
			
			request.getRequestDispatcher("servletAutenticacao").forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
		}		
		
	}
}
