<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <%@page import="java.sql.*" %>
    <%@page import="com.connection.DBConnect" %>
    <%@page import="com.entity.User" %>
    <%@page import="com.dao.UserDAO" %>
<%
    User user = (User) session.getAttribute("currentUser");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/NewFile.css">
</head>
<body>
<div class="main-box">
        <div class="box2">
            <div class="name">
                <h4>Edit Account</h4>
            </div>
            <form action="Update" method="post" class="form" enctype="multipart/form-data">
                <label for="profile">Profile Picture</label>
                <input type="file" name="image" id="profile">
                <br>
                <label for="firstname">First Name</label>
                <br>
                <input type="text" name="user_firstname" id="firstname" value="<%=user.getFirstname() %>" placeholder="Enter Your First name">
                <br>
                <label for="lastname">Last Name</label>
                <br>
                <input type="text" name="user_lastname" id="lastname" value="<%=user.getLastname() %>" placeholder="Enter Your Last Name">
                <br>
                <label for="dob">Dob</label>
                <br>
                <input type="date" name="user_dob" id="dob" value="<%=user.getDob() %>">
                <label for="email">Email</label>
                <br>
                <input type="email" name="user_email" id="email" value="<%=user.getEmail() %>" placeholder="Enter Your Email">
                <br>
                <label for="password">Password</label>
                <br>
                <input type="password" name="user_password" id="password" value="<%=user.getPassword() %>"placeholder="Enter Your Password">
                <br>
                <input type="submit" name="submit" value="save" id="submit">
                <input type="reset" name="reset" value="reset" id="submit">

            </form>
        </div>
    </div>
</body>
</html>
    