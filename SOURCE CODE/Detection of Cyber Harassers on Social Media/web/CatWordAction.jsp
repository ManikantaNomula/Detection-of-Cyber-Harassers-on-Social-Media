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
String word=request.getParameter("word");
try{
    ResultSet r=Queries.getExecuteQuery("select count(*) from words where category='"+category+"' and word='"+word+"'");
   int c=0;
    while(r.next()){
      c=r.getInt(1);  
    }
    if(c==0){
    int i=Queries.getExecuteUpdate("insert into words values(null,'"+category+"','"+word+"')");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Word Added Successfully...!!");
            window.location="AddWords.jsp";
        </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Word Adding Failed...!!");
            window.location="AddWords.jsp";
        </script>
        <%
}
}else{
%>
        <script type="text/javascript">
            window.alert("AddWords Already Added.!!");
            window.location="AddWords.jsp";
        </script>
        <%
}
    
    
}catch(Exception e){
  out.println(e);  
}






%>
