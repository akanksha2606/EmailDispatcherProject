

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/home")
public class home extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String uname = req.getParameter("username");
		String pass = req.getParameter("password");
		String op = req.getParameter("btn");
		HttpSession session = req.getSession();
	
		switch(op){	
		
		case "logout":
			res.sendRedirect("index.jsp");
			break;
		
		case "upload":
			res.sendRedirect("csvupload.jsp");
				
			break;
				
		case "Purified and Validated list":
			res.sendRedirect("validmail.jsp");
			
			break;
			
		case "send":
			res.sendRedirect("sendmail.jsp");
			
			break;
			
		default:
			res.sendRedirect("error.jsp");
			
			break;
			
		}
		
		
	}

}
