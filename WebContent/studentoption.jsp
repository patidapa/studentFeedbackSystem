<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
h1 {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
h2 {
    text-shadow: 2px 2px 5px red;
}
.background{
background-color:rgb(201, 250, 229);
}
.table{
background-color:rgb(217, 246, 140);
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
	<jsp:forward page="teacherlogin.jsp"></jsp:forward>
		<%}
	%>
<body>
<body bgcolor="silver"> 
<h1><center>Welcome to you!</center></h1>
<body class="background">
<form action="" method ="post" >
<center>
<div class="container">
  <h2>Select Your choice</h2>
  <div class="list-group">
    <a href="facultylist.jsp" class="list-group-item active">Select Faculty List</a>
    <a href="changestudentpassword.jsp" class="list-group-item active">Change Password</a>
    <a href="Logoutstudent"><button type="button" class="btn btn-primary">Logout</button></a>
  </div>
</div>	 	   
</center>
</form>	
<jsp:include page="footer.html"></jsp:include>   
</body>
</html>