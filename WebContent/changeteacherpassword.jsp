<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.background{
background-color:rgb(201, 250, 229);
}
.table{
background-color:rgb(217, 246, 140);
}
h1 {
    text-shadow: 2px 2px 5px red;
}
</style>
<script src="./validate.js"> </script>
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
%>
<body bgcolor="silver"> 
<h1><center>Change Password</center></h1>
<body class="background">
<form action="TeacherPassword" onsubmit="return validate4();" method ="post" >
 <div class="container">
    <div class="form-group">
      <label for="t1">Email:</label>  <input type="text" name="email" class="form-control" id="t1">
    </div>
    <div class="form-group">
      <label for="t2">Password:</label>
      <input type="password" class="form-control" name="password"  id="t2">
    </div>
	   <input type="submit" class="btn btn-warning" name="Login" value="Update" ></center></td>
	   <a href="teacherlogin.jsp"><input type="button" class="btn btn-primary" name="Register" value="Cancel">
	  </a>
	  </div>
</form>	   
<jsp:include page="footer.html"></jsp:include>
</body>
</html>