
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
   <title>JSP Page</title>
 
   </head>
  
  <body bgcolor = aquamarine>
  
   <table border="1">
     
   <tr>
   
  <th>firstname</th>
       
  <th>lastame</th>
      
  <th>street</th>
            
  <th>address</th>
             
  <th>city</th>

 <th>state</th>

 <th>email</th>

 <th>phone</th>
   </tr>
     
<%
    try{
           
 Class.forName("com.mysql.jdbc.Driver");
           
 Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/customerdata","root","dpk");
           
 PreparedStatement st = con.prepareStatement("Select * from customer");
 
            
  ResultSet rs = st.executeQuery();
          
while(rs.next())
{
     
  %>
       
<tr>
     
<td><%=rs.getString("firstname")%></td>
      
<td><%=rs.getString("lastname")%></td>
        
<td><%=rs.getString("street")%></td>
       
<td><%=rs.getString("address")%></td>
            
<td><%=rs.getString("city")%></td>

<td><%=rs.getString("state")%></td>

<td><%=rs.getString("email")%></td>

<td><%=rs.getString("phone")%></td>
       
  </tr>
  
 <%
            
 }
 }
catch (Exception e)
{
         
e.printStackTrace();
     
}
      
%>
   

</table>
   
</body>

</html>
