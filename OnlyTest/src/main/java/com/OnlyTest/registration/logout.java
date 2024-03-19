package com.OnlyTest.registration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logout
 */
@WebServlet("/logout")
public class logout extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 HttpSession session=request.getSession();  
    	 request.getSession().invalidate();
         RequestDispatcher rd = request.getRequestDispatcher("jsp files/login.jsp");
            rd.forward(request, response);
            System.out.println("Logout Successfully");
    }

}