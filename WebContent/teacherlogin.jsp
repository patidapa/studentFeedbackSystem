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
if(request.getAttribute("Error1")!=null){
	System.out.print(request.getAttribute("Error1"));
	String Error1=(String)request.getAttribute("Error1");
	out.print("<b>"+Error1+"</b>");
}
%>
<body bgcolor="silver"> 
<h1><center>Faculty Login</center></h1>
<body class="background">
<form action="TeacherLoginOperation" onsubmit="return validate6();" method ="post" >
 <div class="container">
    <div class="input-group">
    <span class="input-group-addon"><t1 class="glyphicon glyphicon-user"></t1></span>
       <input type="text" name="email" class="form-control" id="t1" placeholder="Email">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><t2 class="glyphicon glyphicon-lock"></t2></span>
      <input type="password" class="form-control" name="password"  id="t2" placeholder="Password">
    </div>
	   <input type="submit" class="btn btn-primary" name="Login" value="Login" >
	   <a href="changeteacherpassword.jsp"><input type="button" class="btn btn-primary" name="Register" value="Forgot Password"></a>
	   </div>
	   </div>
</form>	
<jsp:include page="footer.html"></jsp:include>   
</body>
</html>