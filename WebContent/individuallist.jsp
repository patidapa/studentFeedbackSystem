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
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
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
<body class="body">
<h1><center>Selected Faculty Feedback Report</center> </h1>
<h2><a href="selectfaculty.html"> <img src="back.png" width="42" height="42"/></a></h2>
<%@page import="com.dto.Teacher"%> 
<%@page import="Database.Util"%> 
<%@page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String sql="(select * from feedback where faculty_email='"+email+"')";
try(Connection con=Util.getConnection();
		Statement st=con.createStatement();
		Statement stmt=con.createStatement())
		{
	ResultSet rs=stmt.executeQuery(sql);
	%>
	<div id="table1">
	<div class="table-responsive">
	<center><table class="table" border=1>
	<tr>
	<th>Email</th>
	<th>Ability in Communication</th>
	<th>Ability to explain Subject</th>
	<th>Ability to Present any Topic</th>
	<th>Giving Practical Knowledge of subject</th>
	<th>Knowledge of the Subject</th>
	<th>Ability to Creating Interest of Subject among Students</th>
	<th>Attend Lecture Regular and Puntual with respect to Subject</th>
	<th>Maintain class Dispiline</th>
	<th>Attitude of Faculty towards Students</th>
	<th>Give Assignment and HomeWorks to Students</th>
	</tr>
	<% 
	while(rs.next())
	{
	%>
	<tr>
	<td> <%=rs.getString("faculty_email")%></td>
	<td> <%=rs.getString("communication")%></td>
	<td> <%=rs.getString("Ability_to_explain_Subject")%> </td>
	<td> <%=rs.getString("Ability_to_Present_any_Topic")%></td>
	<td> <%=rs.getString("Practical_Knowledge_of_subject")%></td>
	<td> <%=rs.getString("Knowledge_of_the_Subject")%> </td>
	<td> <%=rs.getString("Interest_of_Subject_among_Students")%></td>
	<td> <%=rs.getString("Regular_and_Puntual_with_respect_to_Subject")%></td>
	<td> <%=rs.getString("Maintain_class_Displine")%> </td>
	<td> <%=rs.getString("Attitude_of_Faculty")%></td>
	<td> <%=rs.getString("Give_Assignment_and_HomeWorks_to_Students")%></td>
	</tr>
	<%   } 
	
		} catch(Exception ex)
		{
			ex.printStackTrace();
		}
	
	%>
	
	</table>
	</div>
	</center>
	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>