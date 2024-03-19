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
@WebServlet("/otpconfirm")
public class otpConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		
		String myotp=(String) session.getAttribute("otp");
		String confirm_otp= request.getParameter("enteredotp");
		
			
		if(myotp.equals(confirm_otp)) {
				
				System.out.println("Right OTP");
				dispatcher=request.getRequestDispatcher("dashboard");
				
				
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher =request.getRequestDispatcher("jsp files/otppage.jsp");
				session.setAttribute("message","Wrong OTP, Enter again");
				System.out.println("Wrong OTP");
				System.out.println(myotp);
				System.out.println(confirm_otp);
			}
			dispatcher.forward(request,response);
			
			} 
		
		
		
	}


