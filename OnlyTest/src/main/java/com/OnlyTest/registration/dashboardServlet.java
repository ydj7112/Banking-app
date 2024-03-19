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
 * Servlet implementation class dashboardServlet
 */
@WebServlet("/dashboard")
public class dashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		String userid= (String) session.getAttribute("userid");
		
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("SELECT *FROM users INNER JOIN dashboard ON users.userid = dashboard.userid WHERE users.userid = '" + userid + "'");
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
			session.setAttribute("accno", rs.getString("acc_no"));
			session.setAttribute("balance", rs.getInt("balance"));
			session.setAttribute("name", rs.getString("uname"));
			//session.setAttribute("zname", "yash");
			
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankinfo","root","root");
			pst=con.prepareStatement("select * from benefi_details where userid = ?");
			pst.setString(1, userid);
			rs = pst.executeQuery();
			
			if(rs.next()) {
			session.setAttribute("benename", rs.getString("nameBenefc"));
			session.setAttribute("beneaccno", rs.getString("accnoBenefc"));
			session.setAttribute("beneifsc", rs.getString("ifscBenefc"));
			
			  System.out.println(rs.getString("nameBenefc"));	
	          System.out.println(rs.getString("accnoBenefc"));
	          System.out.println(rs.getString("ifscBenefc"));
	          
	          //*For User Profile
	          pst=con.prepareStatement("select * from  persdetails where userid = ?");
	          pst.setString(1, userid);
				rs = pst.executeQuery();
				

			            // Process the result set
			            if (rs.next()) {
			                // Retrieve data from the result set
			                
			                session.setAttribute("mobileNumber", rs.getString("phone_no"));
			             
			                session.setAttribute("address", rs.getString("address"));
			              
			                session.setAttribute("accountType", rs.getString("acc_type"));
			              
			                session.setAttribute("branchName", rs.getString("branch_name"));
			                
			                session.setAttribute("branchAddress", rs.getString("branch_add"));
			                
			                session.setAttribute("ifscCode", rs.getString("ifsc"));
			               
			             
			            }
	         
			dispatcher=request.getRequestDispatcher("jsp files/MainDashBoard1.jsp");
			}else {
				dispatcher=request.getRequestDispatcher("jsp files/MainDashBoard1.jsp");
				dispatcher.forward(request,response);
			}
			
			}
			dispatcher.forward(request,response);
			
	}catch(Exception e) {
		e.printStackTrace();				
	}
	}
}

