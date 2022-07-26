

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/send123")
@MultipartConfig
public class sendmail extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		String emailId = "";//Enter here your email from which you want to send mail
		String password = "";//Enter password for your email id
		String from = "testdemo721921@gmail.com";
		String to = "";
		
		Part part = request.getPart("File");
		
		
		String fileName = part.getSubmittedFileName();
		String path=new File(fileName).getAbsolutePath();
		String finalLocation = path;
	  	//start
	  	
	  	
	  	String host = "smtp.gmail.com";
	  	Properties properties = System.getProperties();
		//System.out.println("PROPERTIES : "+properties);
		
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "587");
		
		
		
		Session session = Session.getInstance(properties,
				new javax.mail.Authenticator() {
			         @Override
		        	protected PasswordAuthentication getPasswordAuthentication() {
				
			            	return new PasswordAuthentication(emailId,password);
		        	}
	         	});
		
		//session.setDebug(true);
		
		
		
		FileReader fr;
		BufferedReader buffer;
		String str;
		fr = new FileReader("F:\\Testerjsp\\Valid.txt");
	    buffer = new BufferedReader(fr);		
	    str= buffer.readLine();
		try {
		     while(str != null) {
		    	 to=str;
		    	 MimeMessage mimeMessage = new MimeMessage(session);
		    	 mimeMessage.setFrom(new InternetAddress(from,false));
		    	 mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to,false));
		    	 MimeBodyPart textMime = new MimeBodyPart();
		    	 MimeBodyPart fileMime = new MimeBodyPart();
		    	 File file = new File(path);
		    	 MimeMultipart mimeMutlipart = new MimeMultipart();
		    	 textMime.setText(message);		 
		    	 mimeMessage.setSubject(subject);
		    	 mimeMutlipart.addBodyPart(textMime);
				 mimeMutlipart.addBodyPart(fileMime);
		    	 fileMime.attachFile(finalLocation);
		    	 mimeMessage.setContent(mimeMutlipart);
		    	 Transport.send(mimeMessage);	 	 
		    	 System.out.println("Mail Sent Successfully....");
		    	 str=buffer.readLine();
		      }
		       
		}catch(Exception e) {
			while(str != null) {
		    	 to=str;
		    	 MimeMessage mimeMessage = new MimeMessage(session);
		    	 try {
					mimeMessage.setFrom(from);
					mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to,false));
					mimeMessage.setSubject(subject);
			     	mimeMessage.setText(message);
					Transport.send(mimeMessage); 	
					System.out.println("Mail Sent Successfully....");
			    	str=buffer.readLine();
		    	 } catch (MessagingException e1) {
		    		 System.out.println("Error occur. Cant send email: "+e);
				}
		     }
		}finally {
			buffer.close();
			fr.close();
		}
	  	
		
		HttpSession session1 = request.getSession();
		session1.setAttribute("message", "Mail Successfully sent!!");
		response.sendRedirect("sendmail.jsp");
	}	
	}


