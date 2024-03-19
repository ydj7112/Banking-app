package com.OnlyTest.registration;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid= request.getParameter("userid");
		String upassword=request.getParameter("password");
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("SELECT * FROM users WHERE userid = ? AND upassword = ?");
			pst.setString(1, userid);
			pst.setString(2, upassword);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("uname"));
				session.setAttribute("userid", rs.getString("userid"));
				session.setAttribute("email", rs.getString("uemail"));
				
			   //	int randomPin   =(int) (Math.random()*900000)+100000; 
		       // String otp  = String.valueOf(randomPin); 
		       String otp="1111";
		        
				String to = rs.getString("uemail");
		        String message = "Your One Time Password(OTP) is :"+otp;
				String subject = "iCodeBankPro : Confirmation";
				String user = "";
		        String pass = "";
				SendMail.send(to,subject, message, user, pass);
				
				session.setAttribute("otp", otp);
				
				
				dispatcher=request.getRequestDispatcher("jsp files/otppage.jsp");
				//response.sendRedirect("dashboard.jsp");
				
				
			}else {
				session.setAttribute("message", "Wrong Application number/Password");
				dispatcher =request.getRequestDispatcher("jsp files/login.jsp");
			}
			dispatcher.forward(request,response);
			
			} catch(Exception e) {
				e.printStackTrace();				
			}
		
		
		
	}

}
