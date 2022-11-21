<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travelopidia</title>
    <link rel="stylesheet" href="css/New.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    
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
    <!-- Slideshow container -->
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="img/Darjeeling-panoramic.jpg">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="img/4.jpg">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="img/pok.jpg">
  <div class="text"></div>
</div>

</div>


<div style="text-align:center;background-color:#61d5ff">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
 
    <div class="post-cont">
        <%
        BlogDAO c= new BlogDAO(DBConnect.getConn());
        List<Post> posts =c.getAllPost();
        for(Post p: posts)
        {
        %>
        	<div class="color">
        
                <div class="post">
                <img src="postimg/<%=p.getBpic() %>" alt="">
                <div class="text">
                <a href="post.jsp?blog-id=<%= p.getBid() %>"><%=p.getBtittle() %></a>
                <a href=""><p></p></a>
                </div>
               
            </div>
            </div>
            
            <%
        }
         %>
        </div>
    
    <!--Footer start-->
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
    <script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>