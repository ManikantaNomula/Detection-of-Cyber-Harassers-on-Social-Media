<%-- 
    Document   : RegAction
    Created on : Jan 18, 2020, 2:53:23 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String pid=request.getParameter("pid");
String uid=request.getParameter("uid");
String comment=request.getParameter("comment");

try{
   
    

         int i=Queries.getExecuteUpdate("insert into comment values(null,'"+pid+"','"+uid+"','"+comment+"',now())");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("Comment SuccessFully..!!");
           window.location="ViewAllPost.jsp";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert(" Failed..!!");
           window.location="ViewAllPost.jsp";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}



%>