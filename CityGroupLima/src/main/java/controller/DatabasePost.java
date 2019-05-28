package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.City;

public class DatabasePost extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static Statement stmt;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;text/css;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String CityName = request.getParameter("CityName");
		String Carusel1 = request.getParameter("Carusel1");
		String Carusel1Alt = request.getParameter("Carusel1Alt");
		String Carusel1Back = request.getParameter("Carusel1Back");
		String Carusel2 = request.getParameter("Carusel2");
		String Carusel2Alt = request.getParameter("Carusel2Alt");
		String Carusel2Back = request.getParameter("Carusel2Back");
		String Carusel3 = request.getParameter("Carusel3");
		String Carusel3Alt = request.getParameter("Carusel3Alt");
		String Carusel3Back = request.getParameter("Carusel3Back");
		String Info = request.getParameter("Info");
		String Info1 = request.getParameter("Info1");
		String Info1Right = request.getParameter("Info1Right");
		String Info2 = request.getParameter("Info2");
		String Info2Left = request.getParameter("Info2Left");
		String Info3 = request.getParameter("Info3");
		String Img1 = request.getParameter("Img1");
		String Img2 = request.getParameter("Img2");
		String Img3 = request.getParameter("Img3");
		String Img4 = request.getParameter("Img4");
		String Img5 = request.getParameter("Img5");
		String Img6 = request.getParameter("Img6");
		String Img7 = request.getParameter("Img7");
		String Img8 = request.getParameter("Img8");
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			stmt = conn.createStatement();
			stmt.executeUpdate("insert into jsp(CityName,Carusel1,Carusel1Alt,Carusel1Back,Carusel2,Carusel2Alt,Carusel2Back,Carusel3,Carusel3Alt,Carusel3Back,Info,Info1,Info1Right,Info2,Info2Left,Info3,Img1,Img2,Img3,Img4,Img5,Img6,Img7,Img8) " + "values('"+CityName+"' , '"+Carusel1+"' , '"+Carusel1Alt+"' , '"+Carusel1Back+"', '"+Carusel2+"' , '"+Carusel2Alt+"' , '"+Carusel2Back+"', '"+Carusel3+"' , '"+Carusel3Alt+"' , '"+Carusel3Back+"' , '"+Info+"' , '"+Info1+"' , '"+Info1Right+"' , '"+Info2+"' , '"+Info2Left+"' , '"+Info3+"' , '"+Img1+"' , '"+Img2+"' , '"+Img3+"' , '"+Img4+"' , '"+Img5+"' , '"+Img6+"' , '"+Img7+"' , '"+Img8+"')");
			
			City city = new City();
			
			city.setCityName(CityName);
			city.setCarusel1(Carusel1);
			city.setCarusel1Alt(Carusel1Alt);
			city.setCarusel1Back(Carusel1Back);
			city.setCarusel2(Carusel2);
			city.setCarusel2Alt(Carusel2Alt);
			city.setCarusel2Back(Carusel2Back);
			city.setCarusel3(Carusel3);
			city.setCarusel3Alt(Carusel3Alt);
			city.setCarusel3Back(Carusel3Back);
			city.setInfo(Info);
			city.setInfo1(Info1);
			city.setInfo1Right(Info1Right);
			city.setInfo2(Info2);
			city.setInfo2Left(Info2Left);
			city.setInfo3(Info3);
			city.setImg1(Img1);
			city.setImg2(Img2);
			city.setImg3(Img3);
			city.setImg4(Img4);
			city.setImg5(Img5);
			city.setImg6(Img6);
			city.setImg7(Img7);
			city.setImg8(Img8);
	
			
			request.getSession().setAttribute("City", city);
			
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kayit Basarili');");
			out.println("location='homepage.jsp';");
			out.println("</script>");
		} catch (Exception e) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kayit Basarisiz');");
			out.println("location='homepage.jsp';");
			out.println("</script>");
			e.printStackTrace();
		}

	}

}
