import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/upload")
@MultipartConfig
public class csvupload extends HttpServlet
{
	protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		PrintWriter out = res.getWriter();
		String path="F:\\Testerjsp";
		Part part = req.getPart("File");
		
		String fileName = part.getSubmittedFileName();
		String finalLocation = path + File.separator + fileName;
		part.write(finalLocation);
		
        
		
		File f1,f2;
		FileReader fcsv;
		FileWriter fvalid,finvalid;
		BufferedReader bufferedread;
		BufferedWriter bufferedwrite1,bufferedwrite2;
		String str;
		
		try {
			f1 = new File("F:\\Testerjsp\\Valid.txt");
			f2 = new File("F:\\Testerjsp\\Invalid.txt");
			if(f1.exists() == false && f2.exists() == false){
				f1.createNewFile();
				f2.createNewFile();
			}
			
			
			fcsv= new FileReader(finalLocation);
			bufferedread = new BufferedReader(fcsv);
			str=bufferedread.readLine();
			
			fvalid = new FileWriter("F:\\Testerjsp\\Valid.txt",true);
			bufferedwrite1 = new BufferedWriter(fvalid);
			
			finvalid = new FileWriter("F:\\Testerjsp\\Invalid.txt",true);
			bufferedwrite2 = new BufferedWriter(finvalid);
			
//			String emailRegex = "^[a-zA-Z0-9_+&*]+(?:\\."+
//			"[a-zA-Z0-9_+&*-]+)*@"+
//			"(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
//			
			String emailRegex="^[A-Za-z0-9+_.-]+@(.+)$";
			Pattern pattern = Pattern.compile(emailRegex);
			
			
				while(str!=null) {
					if(pattern.matcher(str).matches()) {
						fvalid.write(str+"\n");
					}else {
						finvalid.write(str+"\n");
					}
					str=bufferedread.readLine();
				}
				
			 
				bufferedread.close();
				fvalid.close();
				finvalid.close();
			
		}
		catch(FileNotFoundException e) {
			
		}
		 
		
		
		res.sendRedirect("home.jsp");
		
	}

	}


