<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
     <%@page import="com.dao.BlogDAO" %>
     <%@page import="com.connection.DBConnect" %>
     <%@page import="java.util.ArrayList" %>
     <%@page import="com.entity.Category" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="Stylesheet" href="css/dopost.css">
    <title>Travelopidia</title>
    </head>
<body>
    <div class="dopost">
        <div class="post-head">
            <span>Post</span>
        </div>
        <form action="PostBlog" method="post" enctype="multipart/form-data">
            <select id="cat" name="cid">
                <option selected disabled >Select Catagory</option>
                 <%
                BlogDAO postn =new BlogDAO(DBConnect.getConn());
                ArrayList<Category> list= postn.getCategories();
               
                	for(Category cy : list)
                	{
                %>
                <option value="<%= cy.getCid()%>"><%=cy.getCname() %></option>
                <%
                	}
                %>
            </select>
            <textarea name="btittle" id="tittle" cols="50" rows="1" placeholder="Enter Tittle"></textarea>
            <textarea name="bcont" id="cont" cols="50" rows="10"placeholder="Enter Content"></textarea>
            <input type="file" name="bpic" id="pic" >
            <div class="post-btn">
                <a href="index.jsp">back</a>
                <input type="reset" value="Clear" id="new">
                <input type="submit" value="post" id="new">
                
            </div>
        </form>
        
    </div>
    
</body>
</html>
    