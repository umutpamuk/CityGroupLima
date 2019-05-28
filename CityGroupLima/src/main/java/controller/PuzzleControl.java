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

import data.Puzzle;


public class PuzzleControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;text/css;charset=UTF-8");
		
		String city = request.getParameter("CityName");
		Puzzle p = new Puzzle();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			PreparedStatement pst = conn.prepareStatement("Select * from puzzle where CityName=?");
			pst.setString(1, city);
			ResultSet rs = pst.executeQuery();
	
			while(rs.next()) {
				p.setCityName(rs.getString(2));
				
				p.setPhoto1(rs.getString(3));
				p.setPhoto2(rs.getString(4));
				p.setPhoto3(rs.getString(5));
				p.setPhotoName1(rs.getString(6));
				p.setPhotoName2(rs.getString(7));
				p.setPhotoName3(rs.getString(8));
				

				
			}
		
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
		request.setAttribute("puzzle", p);
		request.getRequestDispatcher("./puzzle.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
