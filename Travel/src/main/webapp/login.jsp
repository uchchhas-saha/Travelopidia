<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travelopidia</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="main-box">
        <div class="logo">
            <h1><span class="orange">Travelo</span><span class="green">pedia</span></h1>
        </div>
        <form action="LoginSer" method="post" id="From">
            <label for="email">E-Mail</label>
            <input type="email" name="email" id="email" class="info" placeholder="Enter your e-mail"required autocomplete="off" onkeydown="valid()">
            <label for="password">Password</label>
            <div id="text"></div>
            <input type="text" name="password" id="password" class="info" placeholder="Enter your password"required  autocomplete="off" onkeyup="msg(this.value)">
            <div id="error"></div>
            <input type="submit" name="submit" id="submit" value="login">
            <input type="reset" name="reset" id="reset">
        </form>
        <div class="login-page">
            <a href="signup.jsp">New Account</a>
        </div>
    </div>
 
</body>
</html>