<html>
<head>
<style>
.background {
	background-color: rgb(201, 250, 229);
}
h1 {
    text-shadow: 2px 2px 5px red;
}
}
</style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%
if(request.getAttribute("Error1")!=null){
	System.out.print(request.getAttribute("Error1"));
	String Error1=(String)request.getAttribute("Error1");
	out.print("<b>"+Error1+"</b>");
	}
%>
<body bgcolor="silver">
	<h1>
		<center>Admin Login</center>
	</h1>
<body class="background">
	<form action="AdminOperation" method="post">
	<form action="TeacherLoginOperation" onsubmit="return validate();" method ="post" >
 <div class="container">
    <div class="input-group">
    <span class="input-group-addon"><t1 class="glyphicon glyphicon-user"></t1></span>
       <input type="text" name="uname" class="form-control" id="t1" placeholder="User Name"required>
    </div>
    <div class="input-group">
      <span class="input-group-addon"><t2 class="glyphicon glyphicon-lock"></t2></span>
      <input type="password" class="form-control" name="password"  id="t2" placeholder="Password" required>
    </div>
	<input type="submit" class="btn btn-primary" name="Login" value="Login">
		<input type="reset" class="btn btn-primary" name="Reset" value="Reset">
		</div>
	</form>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>