package com.OnlyTest.DB;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DbConnection {

	public static boolean flag=false;
	//DataBase Connection------------------------------
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		}
		catch(ClassNotFoundException exob1){
			System.out.println("Cannot load driver");
		}
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankinfo","root","root");
			
		}catch(SQLException exob2) {
			System.out.println("Cannot establish connection");
		}
		return con;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		String userid= (String) session.getAttribute("userid");
		Connection con=DbConnection.getConnection();
		
		
		try {
			
			PreparedStatement pst=con.prepareStatement("select * FROM users WHERE userid = '" + userid + "'");
			ResultSet rs = pst.executeQuery();
			
    	}catch(Exception e) {
			e.printStackTrace();				
		}
}
}

