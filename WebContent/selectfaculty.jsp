<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
h1 {
     text-shadow: 2px 2px 5px red;
}
#Div {
background-color:hsla(0, 100%, 30%, 0.3);
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
<body><center>
<h1>Select Faculty</h1>
<div id="Div">
<form action="generatelist.jsp" method="post">
Email :<input type="email" name="email" required/></br>
<input type="submit" class="btn btn-primary" name="Submit" value="submit"/>
<a href="adminoption.jsp"><input type="button" class="btn btn-primary" value="Cancel"/></a>
</div>
 </form>
</center>
</body>
<jsp:include page="footer.html"></jsp:include>
</html>