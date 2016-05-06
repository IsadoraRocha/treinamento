package br.com.sonner.treinamento.projeto1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.sonner.treinamento.projeto1.model.Pessoa;


@WebServlet("/alteraDados")
public class alteraDados extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public alteraDados() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	request.getRequestDispatcher("mudaDados.jsp").forward(request, response);

        String Nome = request.getParameter("nome"); 
        String Email = request.getParameter("email");
        
        try{
        	
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection connection = DriverManager.getConnection("jdbc:mysql://10.1.1.16:3306/agritap","root","sicsadm");
        	Pessoa pessoa = new Pessoa();
        	pessoa.setNome(Nome);
        	pessoa.setEmail(Email);
        
        	
        	Statement st  = connection.createStatement();
        	String queryUpdate ="Update Pessoa set nome ='"+Nome;
        	String queryUpdate2 ="Update Pessoa set email ='"+Email;
        	st.executeUpdate(queryUpdate);
        	st.executeUpdate(queryUpdate2);
        	//pessoa.getId();
    		request.setAttribute("pessoaEditada" , pessoa.getId());
    		connection.close();
        	
        	
        	
        }catch (Exception e) {
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("ServletAutenticacao.jsp").forward(request, response);
	}
}
