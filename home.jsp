<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
	<%
        if(session.getAttribute("username")== null){
        	response.sendRedirect("index.jsp");
        	session.removeAttribute("username");
        }
    %>



	<header>
		<h1 class="heading">Exposys Data Labs</h1>
		 
	</header>
	<form action="home" method="post">
		<nav>
			<button class="open-button" name="btn" value="logout">LOGOUT</button>
		</nav>

		<main id="main-class">
			<div class="content">
				<p>A Project is to upload a CSV file containing data such as
					emails,mails,etc. Validating and purification of that can be done
					,mails are sent to those emails which are valid.</p>
				<p>Following is the process step by step for dispatching the
					emails.</p>

				<!-- Buttons for three steps -->
				<div class="box">
					<!--Step 1 - Upload CSV-->
					<div class="box1">
						<h5 class="btnBox">Step1:</h5>
					</div>
					<div class="box1">
						<button type="submit" class="btnUpload boxBtn" name="btn"
							value="upload">Upload CSV</button>
					</div>

					<!--Step 2 - Purifying and validating emails-->
					<div class="box1">
						<h5 class="btnBox">Step2:</h5>
					</div>
					<div class="box1">
						<button type="submit" class="btnVarify boxBtn" name="btn"
							value="Purified and Validated list">Purified and
							Validated list</button>
					</div>

					<!--Step 3 - Sending mail-->
					<div class="box1">
						<h5 class="btnBox">Step3:</h5>
					</div>
					<div class="box1">
						<button type="submit" class="btnSend boxBtn" name="btn"
							value="send">Send mails</button>
					</div>
				</div>
			</div>
		</main>
	</form>
</body>
</html>