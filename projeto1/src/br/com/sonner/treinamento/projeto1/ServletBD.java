package br.com.sonner.treinamento.projeto1;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/ServletBD")

public class ServletBD extends HttpServlet{
	
	public ServletBD(){
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	PrintWriter out = response.getWriter();
		
		
		String Nome = request.getParameter("nome"); 
		String Email = request.getParameter("email");
		
		try{

			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://10.1.1.16:3306/agritap","root","sicsadm");
			Pessoa pessoa = new Pessoa();
			pessoa.setNome(Nome);
			pessoa.setEmail(Email);
			List<Pessoa> listaDePessoas = new LinkedList<>();
			listaDePessoas.add(pessoa);
			
			Statement st  = connection.createStatement();
			String queryInsert ="Insert into Pessoa (nome,email)  values('"+Nome+"','"+Email+"')";
			st.executeUpdate(queryInsert);
			connection.close();
			
			request.getRequestDispatcher("servletAutenticacao").forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}