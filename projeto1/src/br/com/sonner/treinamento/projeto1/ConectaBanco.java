package br.com.sonner.treinamento.projeto1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectaBanco {
	
	public Connection conecta() throws ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = null;
		try {
			connection = DriverManager.getConnection("jdbc:mysql://10.1.1.16:3306/agritap","root","sicsadm");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
}
