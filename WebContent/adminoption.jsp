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
.body {
    background-color: hsla(89, 43%, 51%, 0.3);
}
.table1 {
    border: 1px solid black;
    background-color:hsla(0, 100%, 70%, 0.3);
    background-size: 120px 100px;
    background-repeat: no-repeat;
    padding:8px;
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
	<jsp:forward page="adminlogin.jsp"></jsp:forward>
		<%}
	%>
<body class="body"><center><h1>Welcome Admin!</h1>
<div class="container" class="table1">
  <h2>Select Your Choice</h2>
  <div class="table1">
  <div class="list-group">
    <a href="addteacher.jsp" class="list-group-item active">Add new Faculty</a>
    <a href="removeteacher.jsp" class="list-group-item active">Remove Faculty</a>
    <a href="selectfaculty.jsp" class="list-group-item active">Generate Faculty Report(Individual)</a>
     <a href="facultyfeedbacklist.jsp" class="list-group-item active">Generate all Faculties Report</a>
    <a href="addstudent.jsp" class="list-group-item active">Add Student</a>
     <a href="removestudent.jsp" class="list-group-item active">Remove Student</a>
     <a href="Logoutadmin"><button type="button" class="btn btn-primary">Logout</button></a>
  </div>
  </div>
</div>
</center>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>