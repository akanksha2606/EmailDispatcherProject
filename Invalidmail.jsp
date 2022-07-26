<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<style>
p{
   text-align:left;
   font-size:30px;
}
.box{
	margin: 0 150px 0 150px;
	border-radius: 0 20px 0 20px;
}
   
.head{
    background-color:black;
    padding:20px;
    font-size:25px;
}
h2{
    text-align:center;
    
}
a{
  color:white;
}
.name{
  color:white;
}
</style>
</head>
<body>
    <%
        if(session.getAttribute("username")== null){
        	response.sendRedirect("index.jsp");
        	session.removeAttribute("username");
        }
    %>
    <div class="head">
         <a class="name" href="home.jsp">Exposys Data Labs</a>
         <a href="home.jsp">Home</a>
         <a href="validmail.jsp">Valid mails</a>
         <a href="sendmail.jsp">Send mails</a>
          <a href="logout.jsp">Logout</a>
    </div>
     <h2>Invalid Mails</h2>
    <%!
        FileReader fr1;
        BufferedReader buffer;
        String str;
        int i=1;
    %>
    <%
         fr1= new FileReader("F:\\Testerjsp\\Invalid.txt");
         buffer = new BufferedReader(fr1);
         str = buffer.readLine();
         
         while(str != null){
     %>
        <div class="box">
           <p><% out.println(i+") "+str+" ");%> <p><hr>
        </div>
         
     <% 
     str = buffer.readLine();
             i++;
         }
         i=1;
         buffer.close();
         fr1.close();
    %>
    
</body>
</html>