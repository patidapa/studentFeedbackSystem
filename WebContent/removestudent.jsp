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
<script> 
function validate()
{
 var error="";

 var reg = document.getElementById( "t1" );
 if( reg.value == ""  )
 {
  alert("Please enter valid Registration no");
  return false;
 }
 else
	 {
	 return true;
	 }
	 }

</script>
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
<body bgcolor="silver"> 
<h1><center>Remove Student</center></h1>
<body class="background">
<form action="StudentRemove" method ="post" onsubmit="return validate();" >
<div class="container">
    <div class="form-group">
      <label for="usr">Registration No:</label>
      <input type="text" class="form-control" name="regino" id="t1">
    </div>
	   <input type="submit" class="btn btn-danger" name="Login" value="Remove" ></center></td>
	   <a href="adminoption.jsp"><input type="button" class="btn btn-primary" name="Register" value="Cancel">
	   </a>
	   </div>
</form>	   
<jsp:include page="footer.html"></jsp:include>
</body>
</html>