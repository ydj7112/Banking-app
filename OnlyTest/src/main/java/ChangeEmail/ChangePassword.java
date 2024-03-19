package ChangeEmail;


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
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String curr_pass= request.getParameter("currpass");
		String new_pass=request.getParameter("newpass");
		
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
	
		String userid=(String) session.getAttribute("userid");
		String confirm_otp= request.getParameter("enteredotp");
		String user_pass=(String) session.getAttribute("password");
		
		System.out.println(userid);
		System.out.println(confirm_otp);
		System.out.println(user_pass);
		System.out.println(curr_pass);
		System.out.println(new_pass);
		
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select  upassword from users where userid = ?");
			pst.setString(1, userid);
			ResultSet rs = pst.executeQuery();
			
			System.out.println(new_pass);
			String myotp="1111";
			
			
			if(rs.next()) {
				String curpass = rs.getString("upassword");
				System.out.println("curpass" +curpass);
			
			if(curr_pass.equals(curpass) && myotp.equals(confirm_otp) ) {
				
				System.out.println("Right OTPppp");
				pst = con.prepareStatement("update users set upassword= ? where userid=?");
				pst.setString(1, new_pass);
				pst.setString(2, userid);
				pst.executeUpdate();
				
				dispatcher=request.getRequestDispatcher("jsp files/MailSucess.jsp");
				dispatcher.forward(request,response);
				
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher =request.getRequestDispatcher("jsp files/UserProfile.jsp");
				session.setAttribute("message","Wrong OTP, Enter again");
				System.out.println("Wrong OTPpppppp");
				System.out.println(myotp);
				System.out.println(confirm_otp);
				dispatcher.forward(request,response);
			}
			
			
			}
		
		}catch(Exception e) {
				e.printStackTrace();				
			}
			 
		
		
		
	}
}


