<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="demo.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script>
    function openForm() {
	  document.getElementById("myForm").style.display = "block";
	}

	function closeForm() {
	  document.getElementById("myForm").style.display = "none";
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1 class="heading">Exposys Data Labs</h1>
	</header>
	<nav>
		<button class="open-button" onclick="openForm()">LOGIN</button>
	</nav>
	<form  action="Login111" method="post">
		<div class="form-popup" id="myForm">
			<div class="form-container">
				<h2>Login</h2>
				<label for="email"><b>Email</b></label> <input type="text"
					placeholder="Enter Email" name="username" > <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" >
				<button class="btn" name="btn" value="login">Login</button>
				<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
			</div>
		</div>

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
					<div class="box1" data-text="upload file">
					    <button type="submit" class="btnUpload boxBtn" name="btn" value="upload">Upload CSV</button>
					</div>
					
					<!--Step 2 - Purifying and validating emails-->
					<div class="box1">
						<h5 class="btnBox">Step2:</h5>
					</div>
					<div class="box1">
						<button type="submit" class="btnVarify boxBtn" name="btn" value="Purified and Validated list">Purified and Validated list</button>
					</div>

					<!--Step 3 - Sending mail-->
					<div class="box1">
						<h5 class="btnBox">Step3:</h5>
					</div>
					<div class="box1">
						<button type="submit" class="btnSend boxBtn" name="btn" value="send">Send mails</button>
					</div>
				</div>
			</div>
		</main>
	</form>
</body>
</html>