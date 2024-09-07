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
    String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pass");
try{
    int count=0;
    
  String query="select count(*) from register where email='"+email+"'and username='"+uname+"'";
       ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
         int i=Queries.getExecuteUpdate("insert into register values(null,'"+name+"','"+email+"','"+mobile+"','"+address+"','"+uname+"','"+pwd+"')");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("User Register SuccessFully..!!");
           window.location="Register.jsp";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert("User Registration Failed..!!");
           window.location="Register.jsp";
           </script>
          <%
}
       }else{
%>
       <script type="text/javascript">
           window.alert("Email or UserName Doesn't Exist..!!");
           window.location="Register.jsp";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}



%>