<%-- 
    Document   : Admin
    Created on : 7 Feb, 2021, 4:04:29 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Detections</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="#">Detection of Cyber Harassers </a></h1>
      <p>on Social Media</p>
    </div>
    <div id="info">
      
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="AdminHome.jsp">Home</a></li>
        <li class="active"><a href="PostContent.jsp">Post Content</a></li>
        <li><a href="ViewAllPost.jsp">View All Posts</a></li>
  
        <li class="last"><a href="User.jsp">Logout</a></li>
      </ul>
    </div>
    <div id="search">
     
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="services">
      
      <br class="clear" />
    </div>
    <div id="content"   style="margin-bottom:220px;">
       <center>
            <%
            String username=(String)session.getAttribute("username");
            String pid=request.getParameter("pid");
            String uid=request.getParameter("uid");
            
            %>
            <h2>POST CONTENT TO PUBLIC</h2>
            <form action="CommentAction.jsp" method="post">
                <table>
                    <tr><th>Post Id</th><td><input type="text" name="pid" value="<%=pid%>" readonly=""></td></tr>
                    <tr><th></th><td><input type="hidden" name="uid" value="<%=uid%>" readonly=""></td></tr>
                    <tr><th>Comment</th><td><textarea name="comment" cols="30" rows="5" required=""></textarea></td></tr>

<tr><th>Title</th><td><input type="submit" value="Post Comment" required=""></td></tr>
                </table>
            </form>
            
            
            
        </center>
    </div>
    <div id="column">
      <div class="flickrbox">
       
        <br class="clear" />
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="footer">
   
   
  
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Detection of Cyber Harassers on Social Media</p>
    <p class="fl_right"></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>