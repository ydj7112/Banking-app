package com.OnlyTest.registration;



import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.annotation.WebServlet;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendMail
{ 
    public static void send(String to, String sub, 
                         String msg, final String user,final String pass)
    { 
        //create an instance of Properties Class   
        Properties props = new Properties();
     
        /*  Specifies the IP address of your default mail server
     	      for e.g if you are using gmail server as an email sever
            you will pass smtp.gmail.com as value of mail.smtp host. 
            As shown here in the code. 
            Change accordingly, if your email id is not a gmail id
        */
        props.put("mail.smtp.host", "smtp.gmail.com");
        // below mentioned mail.smtp.port is optional 
        props.put("mail.smtp.port", "465");		
        props.put("mail.smtp.ssl.enable","true");
        props.put("mail.smtp.auth","true");
     
        /* Pass Properties object(props) and Authenticator object   
           for authentication to Session instance 
        */

		Session session=Session.getInstance(props, new Authenticator() {
			@Override
            protected PasswordAuthentication getPasswordAuthentication() {
            
  	 	         return new PasswordAuthentication(user,pass); 
			}
        });
		session.setDebug(true);

        try {
 
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject(sub);
            message.setText(msg);

            /* Transport class is used to deliver the message to the recipients */
           
            Transport.send(message);
        }
        catch(Exception e) {
    	     e.printStackTrace();
        }
    }  
}
