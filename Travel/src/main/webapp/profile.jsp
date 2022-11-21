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
<link rel="stylesheet" href="css/profile.css">
<title>Travelopidia-<%=user.getFirstname()%></title>
</head>
<body>

    <div class="main-box">
        <div class="logo">
            <h1><span class="orange">Travelo</span><span class="green">pedia</span></h1>
        </div>
        <br>
        <hr>
        <div class="propic" >
        
        <div class="img">
            <img src="profilimg/<%=user.getProfile()%>" alt="pic" height="150px" width="150px">
        </div>
        <hr><hr>
        
        <div class="info">
            <h3>FirstName:<span><%=user.getFirstname() %></span></h3>
            <h3>LastName:<span><%=user.getLastname() %></span></h3>
            <h3>Dob:<span><%=user.getDob() %></span></h3>
            <div class="edit">
                <a href="profiledit.jsp">Edit</a>
                <a href="index.jsp">Back</a>
            </div>
        </div>
        
        </div>
       
    </div>


</body>
</html>
    