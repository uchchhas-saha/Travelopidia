<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   <%@page import="java.sql.*" %>
 <%@page import="com.connection.DBConnect" %>
 <%@page import="com.entity.User" %>
 <%@page import="com.dao.UserDAO" %>
 <%@page import="java.sql.*" %>
 <%@page import="com.dao.BlogDAO" %>
 <%@page import="java.util.ArrayList" %>
 <%@page import="com.entity.Category" %>
 <%@page import="java.sql.*" %>
 <%@page import="com.entity.Post" %>
 <%@page import="java.util.*" %>
<%
    User user = (User) session.getAttribute("currentUser");
%> 
<%
int blogID=Integer.parseInt(request.getParameter("blog-id"));
BlogDAO dy=new BlogDAO(DBConnect.getConn());
Post py=dy.getPostByPostId(blogID);
%>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/display.css">
    <title><%=py.getBtittle() %></title>
</head>
<body>
	<!--nav-->
    
        <div class="nav">
            <div class="logo">
                <a href="home.jsp">
                    Travelopedia
                </a>
            </div>
             
            <div class="options">
                <div class="menutoggle active">
                    <i class="fa fa-bars"></i>
                </div>
            
                <div class="menu">
                    <ul class="navlist active">
                        <li><a href="">Mountain</a></li>
                        <li><a href="">Plain</a></li>
                        <li><a href="">Sea</a></li>
                        <li><a href="dopost.jsp">Post</a></li>
                        <li><a href="profile.jsp" style="color:green"><%= user.getFirstname() %></a></li>
                        </ul>
                   </div>
          </div> 
        </div>
        <!--post-->
        <div class="container1">
        <div class="m-box1-post">
          <div class="box2">
           <div class="post-tittle">
            <h1><%=py.getBtittle() %></h1>
           </div>
           <div class="post-pic">
            <img src="postimg/<%=py.getBpic() %>" alt="">
           </div>
         
           </div>
           <%
           UserDAO usr=new UserDAO(DBConnect.getConn());
           %>
           <div class="post-owner">
            <h2>Posted by<a href="#"><%=usr.getUserByUserID(py.getUserid()).getFirstname()%></a></h2>
            <span></span>
           </div>
           <hr>
           <div class="post-cont">
            <p><%=py.getBcont() %></p>
           </div>
        </div>
    </div>
    <!--footer start-->
    <footer class="end-part">
        <div class="Contact">
            <h1>Contact Us</h1>

            <ul>
                <li><a href="https://www.facebook.com"><img src="img/face.png" alt=""></a></li>
                <li><a href="https://www.instagram.com"><img src="img/insta.png" alt=""></a></li>
                
                <li><a href="https://www.youtube.com"><img src="img/youtube.png" alt=""></a></li>
                <li><a href="#"><img src="img/Gmail.png" alt=""></a></li>
            </ul>
        </div>
        <div class="info">
            <h1><span style="color:black">©</span> 2022-Team&nbsp;<span style="color: black">Travelo</span><span class="green">pedia</span></h1>
        </div>
 </footer>
 <!--footer end-->

 <script src="travel.js">
 </script>
</body>
</html>