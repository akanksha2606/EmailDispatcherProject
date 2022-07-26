<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<Style>
body{
  background-color: rgba(213, 209, 209, 0.779);
 }
a{
   font-size:30px;
   color:white;
 }
.Box {
	/*background-color: rgba(155, 153, 153, 0.945);*/
	margin: 50px 400px 0 400px;
	border-radius: 0 20px 0 20px;
}
.box1 {
	display: flex;
	justify-content: center;
	align-items: center;
}
.boxBtn {
	padding: 20px;
	font-size: 20px;
	border-radius: 10px;
}
.boxBtn1 {
	padding: 15px;
	font-size: 20px;
	border-radius: 10px;
}
.head{
    background-color:black;
    padding:20px;
    font-size:25px; 
    
}
h2{
    text-align:center;
}
h3{
   color:white;
}
.name{
  color:white;
}
</Style>
</head>
<body>
    <%
        if(session.getAttribute("username")== null){
        	response.sendRedirect("index.jsp");
        	session.removeAttribute("username");
        }
    %>
        <div class="head">
        <a class="name" href="home.jsp">Exposys Data Labs<a>
         <a href="home.jsp">Home</a>
         <a href="logout.jsp">Logout</a>
        </div>
        
	    <h2>Upload your CSV file here</h2>
    
    <div class="Box">
    <form action="upload" method="post" enctype="multipart/form-data">
    <div class="box1">
       <div>
          <input class="boxBtn" type="file" accept=".csv" name="File" value="upload">
       </div>
       <div>
          <input class="boxBtn1" type="submit" name="btn" value="submit">
       </div>   
    </div>
        
    </form>
     
    
    </div>
       
        
       
       
   
    
</body>
</html>