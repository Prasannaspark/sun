<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
           
Class.forName("com.mysql.jdbc.Driver");
    
Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/customerdata","root","dpk");
 
PreparedStatement st = con.prepareStatement("insert into customer(?,?,?,?,?,?,?,?);");
 
st.setString(1, String.valueOf(request.getParameter("firstname")));
        
st.setString(2, String.valueOf(request.getParameter("lastname")));
          
st.setString(3, String.valueOf(request.getParameter("street")));
  
st.setString(4, String.valueOf(request.getParameter("address")));
       
st.setString(5,String.valueOf(request.getParameter("city")));

st.setString(6,String.valueOf(request.getParameter("state")));

st.setString(7,String.valueOf(request.getParameter("email")));

st.setString(8,String.valueOf(request.getParameter("phone")));
  
st.executeUpdate();
        
st.close();

con.close();

response.sendRedirect("studentViewAll.jsp");
     
   }
 catch (Exception e) 
{

e.printStackTrace();

}
%>

<!DOCTYPE html>

<html>
 
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
 </head>
  
<body bgcolor = red>
        
   
</body>

</html>
