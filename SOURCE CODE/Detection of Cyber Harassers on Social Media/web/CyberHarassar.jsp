<%-- 
    Document   : Admin
    Created on : 7 Feb, 2021, 4:04:29 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
        <li><a href="AddCategory.jsp">Add Category</a></li>
        <li><a href="AddWords.jsp">Add Words</a></li>
        <li class="active"><a href="CyberHarassar.jsp">Cyber Harasser</a></li>
        <li class="last"><a href="Admin.jsp">Logout</a></li>
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
    <div id="content"  style="margin-bottom:220px;">
       <center>
            
            <h2>CYBER HARASSARS</h2>
          
            
                <table>
                    <tr><th>Harassar Name</th><th>Post Content</th></tr>
                            
                                <%
                                try{
                                    Connection con=Dbconnection.getcon();
                                    Statement s=con.createStatement();
                                    Statement s1=con.createStatement();
                                    Statement s2=con.createStatement();
                                    Statement s3=con.createStatement();
                                    
                                    ResultSet r=Queries.getExecuteQuery("select * from words");
                                    while(r.next()){
                                    String category=r.getString("category");   
                                     String words=r.getString("word");  
                                     ResultSet rr1=s1.executeQuery("SELECT * FROM posts WHERE content like '%"+words+"%'");
                                     while(rr1.next()){
                                         String content=rr1.getString("content");
                                         String username=rr1.getString("username");
%>
<tr>                                  
    <td><%=username%></td>                                    
        <td><%=content%></td>                                    
</tr>                                    
         <%                            }
                                        
                                        
                                    }
                                }catch(Exception e){
                                  out.println(e);  
                                }
                                
                                
                                %>
                           
                </table>
        
            
            
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