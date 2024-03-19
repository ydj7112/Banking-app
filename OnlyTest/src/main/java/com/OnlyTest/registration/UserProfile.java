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
 * Servlet implementation class UserProfile
 */
@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		String userid=(String) session.getAttribute("userid");
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select * from  persdetails where userid = '"+ userid +"'");
			ResultSet rs = pst.executeQuery();
			
			
			RequestDispatcher dispatcher =null ;

		            // Process the result set
		            if (rs.next()) {
		                // Retrieve data from the result set
		                
		                request.setAttribute("mobileNumber", rs.getString("phone_no"));
		             
		                request.setAttribute("address", rs.getString("address"));
		                
		                request.setAttribute("dob", rs.getString("dob"));
		              
		                request.setAttribute("accountType", rs.getString("acc_type"));
		              
		                request.setAttribute("branchName", rs.getString("branch_name"));
		                
		                request.setAttribute("branchAddress", rs.getString("branch_add"));
		                
		                request.setAttribute("ifscCode", rs.getString("ifsc"));
		                
		                request.setAttribute("pan", rs.getString("pan"));
		                
		                request.setAttribute("aadhar", rs.getString("aadhar"));
		                
		                request.setAttribute("acc_status", rs.getString("acc_status"));
		                
		                dispatcher=request.getRequestDispatcher("jsp files/UserProfile.jsp");
		               
		            } else {
		                System.out.println("No user found with the given ID");
		            }
		            dispatcher.forward(request,response);

		            // Clean-up environment
		            rs.close();
		            pst.close();
		        //    con.close();
					}catch(Exception e) {
						e.printStackTrace();				
					}
		        
		    }
		
	}


