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

/**
 * Servlet implementation class RemoveLinha
 */
@WebServlet("/removeLinha")
public class RemoveLinha extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveLinha() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String ID = request.getParameter("id");
		int id = Integer.parseInt(ID);
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://10.1.1.16:3306/agritap","root","sicsadm");
			
			Statement st  = connection.createStatement();
			
		//	st.executeQuery("select id from Pessoa");
			String queryUpdate = "Delete from Pessoa where id = "+id;
			st.executeUpdate(queryUpdate);
			
			
			//pessoa.getId();
			
			request.getRequestDispatcher("servletAutenticacao").forward(request, response);
			connection.close();
			
			
			
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
