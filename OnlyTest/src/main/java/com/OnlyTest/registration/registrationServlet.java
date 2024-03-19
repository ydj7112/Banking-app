package com.OnlyTest.registration;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		/**Getting details from html page/user**/
		
		/**try(PrintWriter out= response.getWriter()){**/
		String uname=request.getParameter("name");
		String uemail=request.getParameter("email");
		String upassword=request.getParameter("password");
		String userid =request.getParameter("userid");
		/**
		PrintWriter out=response.getWriter();
		out.println(uname);
		out.println(uemail);
		out.println(upassword);
		out.println(userid);**/
		Connection con=null;
		RequestDispatcher dispatcher=null;
		
		try {
			
			/**DB Connection**/
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankinfo","root","root");
			
			/**Insert data into db**/
			PreparedStatement pst=con.prepareStatement("insert into users(userid,uname,uemail,upassword) values(?,?,?,?)");
			pst.setString(1, userid);
			pst.setString(2, uname);
			pst.setString(3, uemail);
			pst.setString(4, upassword);
			
			pst.executeUpdate();
			
			/**out.println("Done.....");**/
			
			
		int rowCount =pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("login.jsp");
			
			/**To check for proper connection**/
			if (rowCount>0) {
				request.setAttribute("status","success");
				response.sendRedirect("login.jsp");
			}else {
				request.setAttribute("status","failed");
			}
			response.sendRedirect("login.jsp");
			dispatcher.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			/**out.println("Error.....");**/
		}
			
	}/**finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}**/
	
	}
