package transhist;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;  

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class testtranshist
 */
@WebServlet(name="/transhist",urlPatterns={"/transhist"})
public class transhist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public static final String Mainstyle ="tstyle";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();

		 try {
			 
			 String userid=(String) session.getAttribute("userid");
			 PrintWriter out=response.getWriter();
			 Class.forName("org.postgresql.Driver");
				Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
				PreparedStatement pst=con.prepareStatement("select * from transaction where userid= ?");
				pst.setString(1, userid);
				
		//	out.print("<table width=75% border=1>");
		//	out.print("<caption>Student Result :</caption>");
				
				out.print("<!DOCTYPE html>");
				out.print("<html>");
				out.print("<head>");
				out.print("<meta charset=\"utf-8\">\r\n"
						+ "	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
						+ "	<title>FundTransfer 1</title>\r\n"
						+ "	<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\" crossorigin=\"anonymous\">");
				
				out.print("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL\" crossorigin=\"anonymous\"></script>");
				out.print("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/trashist.css\">");
				out.print("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/header.css\">");
				
				out.print("</head>");
				out.print("<body>");
				out.print("   <header>\r\n"
						+ "        <a href=\"jsp files/MainDashBoard.jsp\"><img class=\"img\" src=\"images/Logo.png\" alt=\"\"></a>\r\n"
						+ "        <div class=\"Log-Out\">\r\n"
						+ "            <Button>Exit</Button>\r\n"
						+ "        </div>\r\n"
						+ "    </header>\r\n"
						+ "    <div class=\"transactions\">\r\n"
						+ "        <main class=\"table\">\r\n"
						+ "            <section class=\"table__header\">\r\n"
						+ "                <h2>Transaction History</h2>\r\n"
						+ "               \r\n"
						+ "            </section>\r\n"
						+ "            <section class=\"table__body\">\r\n"
						+ "                <table>\r\n"
						+ "                    <thead>\r\n"
						+ "                        <tr>");
				
				
				
				
				ResultSet rs = pst.executeQuery();
	//			HttpSession session =request.getSession();
				
			RequestDispatcher dispatcher =null ;
   

		            ResultSetMetaData rsmd = rs.getMetaData();
		            int columnsNumber = rsmd.getColumnCount();
		            out.print("<tr>");
		            for(int i=1; i<=columnsNumber; i++) {
		            	out.print("<th>"+rsmd.getColumnName(i)+"</th>");
		            }
		
		            out.print("<tr>");
		            
		            while (rs.next()) {
		               // StringBuilder row = new StringBuilder();
		              //  for (int i = 1; i <= columnsNumber; i++) {
		               //     String columnValue = rs.getString(i);
		               //     row.append(columnValue);
		               //     if (i != columnsNumber) {
		               //         row.append(", ");
		            	
		           // 	out.print("<tr><td>"+rs.getString("userid")+"</td><td>"+rs.getString("transaction_date")+"</td><td>"+rs.getString("reference_id")+"</td><td>"+rs.getString("status")+"</td><td>"+rs.getString("deposit")+"</td><td>"+rs.getString("withdrawal")+"</td><td>"+rs.getString("balance")+"</td></tr>");
		            	
		            //	out.print("<td> 1 </td>");
		            	out.print("<tr> <td> "+rs.getString("userid")+ "</td>");
		            	out.print(" <td>"+rs.getString("TransactionID")+" </td>");
		            	out.print(" <td> "+rs.getString("Beneficary")+" </td>");
		            	out.print(" <td> "+rs.getString("Time")+" </td>");
		            	out.print(" <td> "+rs.getString("Withdrawal")+" </td>");
		            	out.print(" <td> "+rs.getString("Balance")+" </td>");
		            	out.print(" <td> "+rs.getString("Status")+" </td></tr>");
		            	
		                    }
		           
					
				//		dispatcher=request.getRequestDispatcher("transac.jsp");
						
		          
		   //         rs.close();
		  //          pst.close();
		         //   con.close();
		//		dispatcher.forward(request,response);
		            
		        } catch (Exception e) {
		           System. out.print(e);
		//        } catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
		 //       	e.printStackTrace();
			//	}
		    }
		        }

}




	


