<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#table1 {
    border: 1px solid black;
    background-color:hsla(0, 100%, 70%, 0.3);
    background-size: 120px 100px;
    background-repeat: no-repeat;
    padding:8px;
}
.body {
    border: 1px solid black;
    background-color:hsla(120,100%,25%,0.3);
    background-repeat: no-repeat;
    padding:15px;
}
h1 {
    color: black;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
.background{
background-color:rgb(201, 250, 229);
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%
if(session.getAttribute("username")!=null){
String name=(String)session.getAttribute("username");  
out.print("<b>"+name+"</b>");  
}
else{
	request.setAttribute("Error1","Please login into System ");
	%>
	<jsp:forward page="studenlogin.jsp"></jsp:forward>
		<%}
	%>
<body class="background">
<h1><center>Select Faculty </center> </h1>
<h2><a href="studentoption.jsp"> <img src="back.png" width="42" height="42"/></a></h2>
<%@page import="com.dto.Teacher"%> 
<%@page import="Database.Util"%> 
<%@page import="java.sql.*" %>
<%
String sql="select name,email,branch from teacher";
try(Connection con=Util.getConnection();
		Statement st=con.createStatement();
		Statement stmt=con.createStatement())
		{
	ResultSet rs=stmt.executeQuery(sql);
	%>
	<div class="table-responsive">
	<center><table border=1>
	<tr>
	<th>Name</th>
	<th>Email</th>
	<th>Branch</th>
	<th>Select</th>
	</tr>
	<% 
	while(rs.next())
	{
	%>
	<tr>
	<td> <%=rs.getString("name")%></td>
	<td> <%=rs.getString("email")%></td>
	<td> <%=rs.getString("branch")%> </td>
	
	<td><a href="feedback.jsp">Give Feedback</a> </td> 
	</tr>
	<%   } 
	
		} catch(Exception ex)
		{
			ex.printStackTrace();
		}
	
	%>
	
	</table>
	</center>
	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>