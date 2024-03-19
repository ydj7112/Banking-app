package BillPayment;

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


@WebServlet("/BillerDashBoard")
public class BillerDashBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public static final String Mainstyle ="tstyle";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();

		 try {
			 
			 String userid=(String) session.getAttribute("userid");
			 PrintWriter out=response.getWriter();
			 Class.forName("org.postgresql.Driver");
				Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
				PreparedStatement pst=con.prepareStatement("select * from billdetails where userid= ?");
				pst.setString(1, userid);
				
		//	out.print("<table width=75% border=1>");
		//	out.print("<caption>Student Result :</caption>");
				
				out.print("<!DOCTYPE html>");
				out.print("<html>");
				out.print("<head>");
				out.print("<meta charset=\"utf-8\">\r\n"
						+ "	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
						+ "	<title>Dashboard</title>\r\n");
						
				
				out.print(" <link rel=\"stylesheet\" href=\"dashboard/dashboard.css\">\r\n"
						
						
						+ "    <link rel=\"stylesheet\" href=\"electicitybill/center-container1.css\">\r\n"
						
						+ "    <link rel=\"stylesheet\" href=\"electicitybill/Add-Biller.css\">"
						+ "    <link rel=\"stylesheet\" href=\"dashboard/dashboard.css\">\r\n"
						+ "    <link rel=\"stylesheet\" href=\"dashboard/Button.css\">\r\n"
						+ "    <link rel=\"stylesheet\" href=\"dashboard/dropdown.css\">\r\n"
						+ "    <link rel=\"stylesheet\" href=\"dashboard/img-slider.css\">\r\n"
						
						+ "    <link rel=\"stylesheet\" href=\"dashboard/side-container.css\">\r\n"
						+ "    <link rel=\"stylesheet\" href=\"dashboard/right-container.css\">\r\n"
						+ "    <link rel=\"stylesheet\" href=\"dashboard/update.css\">\r\n"
						+ "    <link rel=\"stylesheet\" href=\"dashboard/footer.css\">");
				
				out.print("</head>");
				out.print("\r\n"
						+ "<body>\r\n"
						+ "    <header>\r\n"
						+ "        <nav>\r\n"
						+ "            <form action=\"\">\r\n"
						+ "                <div class=\"icode\">\r\n"
						+ "                    <div class=\"icodeBankPro\"><img src=\"images/Logo.jpg\" alt=\"\"></div>\r\n"
						+ "                    <div class=\"profile-icon\">\r\n"
						+ "                        <a href=\"jsp files/UserProfile.jsp\"><img src=\"images/Login Icon (1).jpg\"></a><span>Hi Yash Joshi...</span>\r\n"
						+ "                    </div>\r\n"
						+ "                    <div class=\"Log-Out\">\r\n"
						+ "                       <form action=\"logout\" method=\"post\">\r\n"
						+ "                        <button type=\"submit\">Logout</button>\r\n"
						+ "                    </form>\r\n"
						+ "                    </div>\r\n"
						+ "                </div>\r\n"
						+ "                <div class=\"ul\">\r\n"
						+ "                    <ul>\r\n"
						+ "                        <div class=\"dropdown\">\r\n"
						+ "                            <button type=\"submit\" class=\"button\"><a href=\"#\">Account</a></button>\r\n"
						+ "                            <div class=\"content\">\r\n"
						+ "                                <a href=\"jsp files/MainDashBoard.jsp\">Account Overview</a>\r\n"
						+ "                                <form action=\"RecentTransac\" method=\"get\">\r\n"
						+ "                                    <button type=\"submit\"  class=\"recentview-trans\">Recent Transactions</button>\r\n"
						+ "                                </form>\r\n"
						+ "                                <form action=\"transhist\" method=\"get\">\r\n"
						+ "                                    <button type=\"submit\" class=\"recentview-trans\">View Transaction\r\n"
						+ "                                        History</button>\r\n"
						+ "                                </form>\r\n"
						+ "                            </div>\r\n"
						+ "                        </div>\r\n"
						+ "                        <hr>\r\n"
						+ "                        <div class=\"billButton\">\r\n"
						+ "                            <form action=\"GetDetails\" method=\"post\">\r\n"
						+ "                                <button type=\"submit\" class=\"button2\">BillPay & Recharge</button>\r\n"
						+ "                            </form>\r\n"
						+ "                        </div>\r\n"
						+ "                        <hr>\r\n"
						+ "                        <div class=\"dropdown2\">\r\n"
						+ "                            <button type=\"submit\" class=\"button\"><a href=\"#\">Fund Transfer</a></button>\r\n"
						+ "                            <div class=\"content2\">\r\n"
						+ "                                <a href=\"jsp files/AddBenifpg1.jsp\">Add Payee/Beneficiary</a>\r\n"
						+ "                                <a href=\"jsp files/TransferToSame1.jsp\">Fund Trasfer Within Own Account</a>\r\n"
						+ "                                <a href=\"jsp files/TransferToAnother1.jsp\">Fund Trasfer Within Another Account</a>\r\n"
						+ "                            </div>\r\n"
						+ "                        </div>\r\n"
						+ "\r\n"
						+ "                        <hr>\r\n"
						+ "                        <button type=\"submit\" class=\"button\"><a href=\"jsp files/FAQ.jsp\">Customer Support</a></button>\r\n"
						+ "            </form>\r\n"
						+ "            <form action=\"\" class=\"searchbar\">\r\n"
						+ "                <input type=\"text\" placeholder=\"Search\">\r\n"
						+ "                <button></button>\r\n"
						+ "            </form>\r\n"
						+ "            <div class=\"underline1\">\r\n"
						+ "                <div class=\"underline\"></div>\r\n"
						+ "            </div>\r\n"
						+ "            </ul>\r\n"
						+ "            </div>\r\n"
						+ "        </nav>\r\n"
						+ "    </header>"
						
						+ "    <main>\r\n"
						+ "        <form action=\"\">\r\n"
						+ "            <div class=\"center-container\">\r\n"
						+ "                <div class=\"selectbiller-exit\">\r\n"
						+ "                    <h1 class=\"h1\">Select Biller</h1>\r\n"
						+ "                    <div class=\"exitAddBiller\">\r\n"
						+ "                        <h3><a href=\"jsp files/AddBiller-dashboard.jsp\">+Add Biller</a></h3>\r\n"
						+ "                        <h3><a href=\"jsp files/MainDashBoard.jsp\">Exit<img src=\"images/icons8-exit-50.png\" alt=\"\"></a></h3>\r\n"
						+ "                    </div> \r\n"
						+ "                </div>\r\n"
						+ "\r\n"
						+ "                <div>\r\n"
						+ "                    <hr\r\n"
						+ "                        style=\"height:2px; width: 100%; border-width:0; background-color:rgb(136, 116, 169); margin: 0px 0px 22px 0px;\">\r\n"
						+ "                </div>\r\n"
						+ "                <section class=\"table_body\">\r\n"
						+ "                    <table>\r\n"
						+ "                        <thead>\r\n"
						+ "                            <tr>\r\n"
						+ "                                <th>BILLER</th>\r\n"
						+ "                                <th>AUTHENTICATOR</th>\r\n"
						+ "                                <th>STATUS</th>\r\n"
						+ "                                <th>Due Date</th>\r\n"
						+ "                                <th>Amount</th>\r\n"
						+ "                                <th style=\"width: 7em;\"></th>\r\n"
						+ "                            </tr>\r\n"
						+ "                        </thead>");
				
				
				
				
				ResultSet rs = pst.executeQuery();
				
				
			RequestDispatcher dispatcher =null ;
   
		            ResultSetMetaData rsmd = rs.getMetaData();
		            int columnsNumber = rsmd.getColumnCount();
		            out.print("<tr>");
		            for(int i=1; i<=columnsNumber; i++) {
		            //	out.print("<th>"+rsmd.getColumnName(i)+"</th>");
		            }
		
		            out.print("<tr>");
		            System.out.println(columnsNumber);
		            
		            while (rs.next()) {
		            	session.setAttribute("pend_amt",rs.getInt("pending_amount") );
		               // StringBuilder row = new StringBuilder();
		              //  for (int i = 1; i <= columnsNumber; i++) {
		               //     String columnValue = rs.getString(i);
		               //     row.append(columnValue);
		               //     if (i != columnsNumber) {
		               //         row.append(", ");
		            	
		           // 	out.print("<tr><td>"+rs.getString("userid")+"</td><td>"+rs.getString("transaction_date")+"</td><td>"+rs.getString("reference_id")+"</td><td>"+rs.getString("status")+"</td><td>"+rs.getString("deposit")+"</td><td>"+rs.getString("withdrawal")+"</td><td>"+rs.getString("balance")+"</td></tr>");
		            	
		            //	out.print("<td> 1 </td>");
		          //  	out.print("<tr> <td> "+rs.getString("userid")+ "</td>");
		            	out.print("<tr> <th> <img src=\"images/Adani.jpg\" alt=\"\">" +rs.getString("billername")+" </th>");
		            	out.print(" <th>"+rs.getString("CA_no")+" </th>");
		            	out.print(" <th>"+rs.getString("Status")+" </th>");
		            	out.print(" <th> "+rs.getString("due")+" </th>");
		            	out.print(" <th> "+rs.getString("pending_amount")+" </th>");
		            	out.print(" <th><button><a href=\"#side-box\">Pay Now</button></th></tr>");
		            }	
		            	out.print("</tbody>\r\n"
		            			+ "                    </table>\r\n"
		            			+ "                </section>\r\n"
		            			+ "            </div>\r\n"
		            			+ "        </form>\r\n"
		            			+ "    </main>\r\n"
		            			+ "    <div id=\"side-box\" class=\"side-box\">\r\n"
		            			+ "        <div class=\"sideb\">\r\n"
		            			+ "            <div class=\"sideb1\">\r\n"
		            			+ "                <form action=\"FinalBillPay\", method=\"post\">\r\n"
		            			+ "                <ul>\r\n"
		            			+ "                   \r\n"
		            			+ "                    <h3>Confirm Details</h3>\r\n"
		            			+ "                    <li>\r\n"
		            			+ "                        <p>Name</p><b id=\"CA\">Yash Joshi</b>\r\n"
		            			+ "                    </li>\r\n"
		            			+ "                    <li>\r\n"
		            			+ "                        <p>Customer ID</p><b>747720921</b>\r\n"
		            			+ "                    </li>\r\n"
		            			+ "                    <li>\r\n"
		            			+ "                        <p>Amount</p><b>1200</b>\r\n"
		            			+ "                    </li>\r\n"
		            			+ "                    <li>\r\n"
		            			+ "                        <p>Payment Account</p><b>ICBPO00009599</b>\r\n"
		            			+ "                    </li>\r\n"
		            			+ "                    <li><button>Pay</button></li>\r\n"
		            			+ "                </ul>\r\n"
		            			+ "                </form>\r\n"
		            			+ "            </div>\r\n"
		            			+ "            <div class=\"sideb2\">\r\n"
		            			+ "                <img src=\"images/Adani.jpg\" alt=\"\">\r\n"
		            			+ "                <p>Adani</p>\r\n"
		            			+ "            </div>\r\n"
		            			+ "        </div>\r\n"
		            			+ "\r\n"
		            			+ "        <div class=\"box-close\">\r\n"
		            			+ "            <a href=\"#\">\r\n"
		            			+ "                ×\r\n"
		            			+ "            </a>\r\n"
		            			+ "        </div>\r\n"
		            			+ "    </div>");
		                    }
		           
					
				//		dispatcher=request.getRequestDispatcher("transac.jsp");
						
		          
		   //         rs.close();
		  //          pst.close();
		         //   con.close();
		//		dispatcher.forward(request,response);
		            
		         catch (Exception e) {
		           System. out.print(e);
		//        } catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
		 //       	e.printStackTrace();
			//	}
		    }
		        }

}




	


