<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travelopedia</title>
<link rel="stylesheet" href="css/signup.css">

</head>
<body>
<div class="main-box">
        <div class="logo">               
            <h1><span class="orange">Travelo</span><span class="green">pedia</span></h1>
        </div>
        <form action="RegServlet" method="post">

            <label for="fname">First Name</label>
            <input type="text" name="firstname" id="fname" class="info" placeholder="Enter your first name">
            <label for="lname">Last Name</label>
            <input type="text" name="lastname" id="lname" class="info" placeholder="Enter your last name">
            <label for="email">E-Mail</label>
            <input type="email" name="email" id="email" class="info" placeholder="Enter your e-mail">
            <label for="password">Password</label>
            <input type="text" name="password" id="password" class="info" placeholder="Enter your password">
            <label for="dob">D.O.B</label>
            <input type="date" name="dob" class="info" id="dob">
           
            <input type="submit" name="submit" id="submit">
            <input type="reset" name="reset" id="reset">
        </form>
        <div class="login-page">
            <a href="login.jsp">Already have an account</a>
        </div>
    </div>
    <script src="Signup.js">
    
    </script>
</body>
</html>
    