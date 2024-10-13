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
<script src="./validate.js"></script>
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
<body bgcolor="silver"> 
<h1><center>Add Student</center></h1>
<body class="background">
<form action="AddStudent" onsubmit="return validate1();" method ="post" >
<div class="container">
    <div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" class="form-control" name="name" id="t0" required>
    </div>
    <div class="form-group">
      <label for="usr">Registration No:</label>
      <input type="text" class="form-control" name="regino" id="t1">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password" id="t2">
    </div>
	  <input type="submit" class="btn btn-primary" name="Login" value="Add" >
	   <a href="adminoption.jsp"><input type="button" class="btn btn-primary" name="Cancel" value="Cancel"></a>
</div>
</form>	 
<jsp:include page="footer.html"></jsp:include>  
</body>
</html>