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
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./validate.js"></script>
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
<h1><center>Add Faculty</center></h1>
<body class="background">
<form action="TeacherController" onsubmit="return validate2();" method ="post" >
<div class="container">
    <div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" class="form-control" name="name" id="t1">
    </div>
    <div class="form-group">
      <label for="usr">Email:</label>
      <input type="email" class="form-control" name="email" id="t2">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password" id="t3">
    </div>
    <div class="form-group">
      <label for="usr">Branch:</label>
      <input type="text" class="form-control" name="branch" id="t4">
    </div>
	   <input type="submit" class="btn btn-primary" name="Add" value="Add" >
	   <input type="reset" class="btn btn-primary" name="Reset" value="Reset">
	    <a href="adminoption.jsp"><input type="button" class="btn btn-primary"name="Cancel" value="Cancel">
	   </a>
	   </div>
</form>	  
<jsp:include page="footer.html"></jsp:include>
</body>
</html>