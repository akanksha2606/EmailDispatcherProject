import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Login111")
public class Login extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String uname = req.getParameter("username");
		String pass = req.getParameter("password");
		String op = req.getParameter("btn");
		String username = "";//Enter your organization username for login
		String password = ""; //Enter your organization password for login
		HttpSession session = req.getSession();
		switch(op){	
		case "login":
			if(uname.equals(username) && pass.equals(password)) {
				session.setAttribute("username", uname);
				res.sendRedirect("home.jsp");
		     }
		     else{
				  res.sendRedirect("demo.jsp");
		       }
			break;
		case "upload":
			res.sendRedirect("error.jsp");
			break;	
		case "Purified and Validated list":
			res.sendRedirect("error.jsp");
			break;
		case "send":
			res.sendRedirect("error.jsp");
			break;
		default:
			res.sendRedirect("error.jsp");
			break;
		}
	}
}

