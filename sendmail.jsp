<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<style>
.head{
   background-color:black;
   padding : 30px;
}
a{
   color:white;
   font-size:30px;
}
h3{
    font-size:30px;
    text-align:center;
}

form{
   width:500px;
   padding:30px;
   margin:auto;
   font-size:20px;
}
input[type=text]{
    width:100%;
    padding:5px;
    font-size:17px;
    background-color:rgb(229, 229, 229);
    border-radius: 10px 10px 10px 10px;
}
input[type=submit]{
    background-color:rgb(5, 152, 98);
    padding:15px;
    font-size:20px;
    color:white;
    border-radius: 20px 20px 20px 20px;
}
textarea{
    font-size:23px;
    background-color:rgb(229, 229, 229);
    border-radius: 20px 20px 20px 20px;
}
.attach{
   padding: 20px;
   font-size: 20px;
   border-radius: 10px;
}
.main{
  padding:30px;
}
.label{
   font-size:25px;
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
         <a class="name">Exposys Data Labs</a>
         <a href="home.jsp">Home</a>
         <a href="logout.jsp">Logout</a>
    </div>
     <%@include file="message.jsp"%>
    <h3>Send multiple mails from one click</h3>
    <form action="send123" method="post" enctype="multipart/form-data">
        <div class="label">
           <label>Subject:</label><br>
        </div>
        <div>
           <input type="text" name="subject" >
        </div>
         <div>
            <label class="label">Message:</label><br>
         </div>
         <div>
            <textarea name="message" rows="20" cols="40"></textarea>
         </div>
         <input class="boxBtn" type="file" name="File" value="upload"><br> 
         <input class="boxBtn1" type="submit" name="btn" value="submit">
    </form>
  
</body>
</html>