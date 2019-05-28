package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.Login;

/**
 * Servlet implementation class scoreController
 */
public class scoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private static Statement stmt;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String score = request.getParameter("skor");*/
		
		Login l = new Login();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			PreparedStatement pst = conn.prepareStatement("Select * from login");
			//pst.setString(1, city);
			ResultSet rs = pst.executeQuery();
	
			while(rs.next()) {
				l.setFirstName(rs.getString(2));
				l.setLastName(rs.getString(3));
				l.setScore(rs.getInt(7));
		
			}
		
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
		request.getSession().setAttribute("skor", l);
		//request.setAttribute("skor", l);
		request.getRequestDispatcher("./scores.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
