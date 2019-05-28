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

import data.City;

public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;text/css;charset=UTF-8");
			
		String city = request.getParameter("CityName");
		City c = new City();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			PreparedStatement pst = conn.prepareStatement("Select * from jsp where CityName=?");
			pst.setString(1, city);
			ResultSet rs = pst.executeQuery();
	
			while(rs.next()) {
				c.setCityName(rs.getString(2));
				c.setCarusel1(rs.getString(3));
				c.setCarusel1Alt(rs.getString(4));
				c.setCarusel1Back(rs.getString(5));
				c.setCarusel2(rs.getString(6));
				c.setCarusel2Alt(rs.getString(7));
				c.setCarusel2Back(rs.getString(8));
				c.setCarusel3(rs.getString(9));
				c.setCarusel3Alt(rs.getString(10));
				c.setCarusel3Back(rs.getString(11));
				c.setInfo(rs.getString(12));
				c.setInfo1(rs.getString(13));
				c.setInfo1Right(rs.getString(14));
				c.setInfo2(rs.getString(15));
				c.setInfo2Left(rs.getString(16));
				c.setInfo3(rs.getString(17));
				c.setImg1(rs.getString(18));
				c.setImg2(rs.getString(19));
				c.setImg3(rs.getString(20));
				c.setImg4(rs.getString(21));
				c.setImg5(rs.getString(22));
				c.setImg6(rs.getString(23));
				c.setImg7(rs.getString(24));
				c.setImg8(rs.getString(25));
				
			}
		
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
		request.setAttribute("city", c);
		request.getRequestDispatcher("./city.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
