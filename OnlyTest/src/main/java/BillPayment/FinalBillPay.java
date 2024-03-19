package BillPayment;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.format.DateTimeFormatter;
import java.util.Random;
import java.time.LocalDateTime;  

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class TransWithIn
 */
@WebServlet("/FinalBillPay")
public class FinalBillPay extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
//		String myotp="1111";
//		String confirm_otp= request.getParameter("enteredotp");
		String userid=(String) session.getAttribute("userid");
		String CANO=(String) session.getAttribute("cano");
		int balance= (Integer) session.getAttribute("balance");
		int Transferamount=(Integer)session.getAttribute("pend_amt");
		String D_U_E=(String)session.getAttribute("DUE");
		String billstatus=(String)session.getAttribute("Bill_Status");
		
		
		String benename="Adani Electricity";
		 		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select * from dashboard where userid = ?");
			pst.setString(1, userid);

			ResultSet rs = pst.executeQuery();
			
			//*TRANSCATION & TRANSACTION HISTORY*
			
	//		if(myotp.equals(confirm_otp)) {
			
			
			int new_balance= 0;
			if(Transferamount!=0) {
			if(balance != 0 && Transferamount-balance<=0){
				
				balance= balance- Transferamount;
				new_balance=balance;
				System.out.println("New balance "+ new_balance);
				
				
				pst = con.prepareStatement("update dashboard set balance= " + new_balance + " where userid= ?");
				pst.setString(1, userid);
				pst.executeUpdate();
				System.out.println("Updated Succesfully" );
			//	dispatcher=request.getRequestDispatcher("SuccessMessage.jsp");
				
				
         //*RECENT TRANSCATIONS*    
		//*TIME AND DATE*	
				
				String status="Success";
				Random rand = new Random();
				int reference = rand.nextInt(1000000000);     //*Transaction ID Generation*
				String reference_id=Integer.toString(reference);  
				session.setAttribute("refid",reference_id );
			
				 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				   LocalDateTime now = LocalDateTime.now();
				  // System.out.println(dtf.format(now));
				   String date=dtf.format(now);
				   System.out.println(date);	
				
		
		//*UPDATE RECENT TRANSCATION	   
				
			//	pst = con.prepareStatement("insert into trshst set(Balance,Transfer_annmt,dtsp,user_id,trans_id)  values(new_balance,Transferamount,date,userid,Transferamount);"
				   
				   pst = con.prepareStatement("INSERT INTO transaction (Balance,Withdrawal,Time,userid,TransactionID,Status,Beneficary)values(?,?,?,?,?,?,?)");
				    pst.setInt(1,new_balance);
					pst.setInt(2, Transferamount);
					pst.setString(3, date);
					pst.setString(4, userid);
					pst.setString(5, reference_id);
					pst.setString(6, status);
					pst.setString(7, benename);
			//	pst = con.prepareStatement("insert into trshst set Balance= " + new_balance + ",Transfer_annmt =" + Transferamount + ",dtsp =" + date + ",user_id =" + userid + ",trans_id =" + Transferamount + " ");
				pst.executeUpdate();
				
				 pst = con.prepareStatement("UPDATE billdetails SET pending_amount='0',Status='Paid',due='-' WHERE CA_no=? ");
				 pst.setString(1,CANO);
				 pst.executeUpdate();	
				
			
				dispatcher=request.getRequestDispatcher("jsp files/SuccessBillPay.jsp");
			}
			else {
				System.out.println("Insuficient Balance" );
				
				 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				   LocalDateTime now = LocalDateTime.now();
				  // System.out.println(dtf.format(now));
				   String date=dtf.format(now);
				   System.out.println(date);	
				   
				   String status="Failed";
				   String reference_id="ICTF002011223";
				   
				pst = con.prepareStatement("INSERT INTO transaction (balance,withdrawal,time,userid,reference_id,status )values(?,?,?,?,?,?)");
				 pst.setLong(1,new_balance);
					pst.setInt(2, Transferamount);
					pst.setString(3, date);
					pst.setString(4, userid);
					pst.setString(5, reference_id);
					pst.setString(6, status);
					pst.executeUpdate();
					dispatcher=request.getRequestDispatcher("jsp files/MainDashBoard.jsp");
			}
				
			
			}else {
				System.out.println("No Bill To Pay");
				dispatcher=request.getRequestDispatcher("jsp files/MainDashBoard1.jsp");
				
			}
			dispatcher.forward(request,response);
			
			
				//session.setAttribute("transfer",balance );
				//session.setAttribute("userid", rs.getString("userid"));
				//session.setAttribute("password", rs.getString("upassword"));
				//session.setAttribute("email", rs.getString("uemail"));
			
		//	}		else {
		//		request.setAttribute("status", "failed");
		//		dispatcher =request.getRequestDispatcher("TransferToAnother3.jsp");
		//		session.setAttribute("message","Wrong OTP, Enter again");
		//		System.out.println("Wrong OTP");
		//		System.out.println(myotp);
		//		System.out.println(confirm_otp);
		//	}
			
		}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		
		}
	
}
}
