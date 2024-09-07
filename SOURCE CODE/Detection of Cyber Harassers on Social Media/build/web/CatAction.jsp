<%-- 
    Document   : CatAction
    Created on : 7 Feb, 2021, 4:14:51 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String category=request.getParameter("category");
try{
    ResultSet r=Queries.getExecuteQuery("select count(*) from category where category='"+category+"'");
   int c=0;
    while(r.next()){
      c=r.getInt(1);  
    }
    if(c==0){
    int i=Queries.getExecuteUpdate("insert into category values(null,'"+category+"')");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Category Added Successfully...!!");
            window.location="AddCategory.jsp";
        </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Category Adding Failed...!!");
            window.location="AddCategory.jsp";
        </script>
        <%
}
}else{
%>
        <script type="text/javascript">
            window.alert("Category Already Added.!!");
            window.location="AddCategory.jsp";
        </script>
        <%
}
    
    
}catch(Exception e){
  out.println(e);  
}






%>
