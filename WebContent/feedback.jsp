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
    color: black;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
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
	<jsp:forward page="studentlogin.jsp"></jsp:forward>
		<%}
	%>
<body class="background">
<form action="FeedbackController"  method="post" onsubmit="return ValidateForm();">
<center>
<h1>FeedBack Form</h1>
Faculty Email: <input type="email" name="email" required/><br>
<table border=1>
<th>1. Ability in Communication.</th>
<tr><td><input type="radio" name="rate" id= "r1" value="Poor"  > Poor
<input type="radio" name="rate" id="r2" value="Good" > Good
<input type="radio" name="rate" id="r3" value="Average" > Average
<input type="radio" name="rate" id="r4" value="Excellent" >Excellent </td>
</tr>
</table>

<table border=1>
<th>2. Ability to explain Subject.</th>
<tr><td><input type="radio" name="rate1" id="r5" value="Poor" > Poor
<input type="radio" name="rate1" id="r6" value="Good" > Good
<input type="radio" name="rate1" id="r7"  value="Average" > Average
<input type="radio" name="rate1" id="r8" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>3. Ability to Present any Topic.</th>
<tr><td><input type="radio" name="rate2" id="r9" value="Poor" > Poor
<input type="radio" name="rate2" id="r10" value="Good" > Good
<input type="radio" name="rate2" id="r11" value="Average" > Average
<input type="radio" name="rate2" id="r12" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>4. Giving Practical Knowledge of subject.</th>
<tr><td><input type="radio" name="rate3" id="r13" value="Poor" > Poor
<input type="radio" name="rate3" id="r14" value="Good" > Good
<input type="radio" name="rate3" id="r15" value="Average" > Average
<input type="radio" name="rate3" id="r16" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>5. Knowledge of the Subject.</th>
<tr><td><input type="radio" name="rate4" id="r17" value="Poor" > Poor
<input type="radio" name="rate4" id="r18" value="Good" > Good
<input type="radio" name="rate4" id="r19" value="Average" > Average
<input type="radio" name="rate4" id="r20" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>6. Ability to Creating Interest of Subject among Students.</th>
<tr><td><input type="radio" name="rate5" id="r21" value="Poor" > Poor
<input type="radio" name="rate5" id="r22" value="Good" > Good
<input type="radio" name="rate5" id="r23" value="Average" > Average
<input type="radio" name="rate5" id="r24" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>7. Attend Lecture Regular and Puntual with respect to Subject.</th>
<tr><td><input type="radio" name="rate6" id="r25" value="Poor" > Poor
<input type="radio" name="rate6" id="r26" value="Good" > Good
<input type="radio" name="rate6" id="r27" value="Average" > Average
<input type="radio" name="rate6" id="r28" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>8. Maintain class Displine.</th>
<tr><td><input type="radio" name="rate7" id="r29" value="Poor" > Poor
<input type="radio" name="rate7" id="r30" value="Good" > Good
<input type="radio" name="rate7" id="r31" value="Average" > Average
<input type="radio" name="rate7" id="r32" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>9. Attitude of Faculty towards Students.</th>
<tr><td><input type="radio" name="rate8" id="r33" value="Poor" > Poor
<input type="radio" name="rate8" id="r34" value="Good" > Good
<input type="radio" name="rate8"  id="r35" value="Average" > Average
<input type="radio" name="rate8" id="r36" value="Excellent">Excellent </td>
</tr>
</table>

<table border=1>
<th>10. Give Assignment and HomeWorks to Students.</th>
<tr><td><input type="radio" name="rate9" id="r37" value="Poor" > Poor
<input type="radio" name="rate9" id="r38" value="Good" > Good
<input type="radio" name="rate9" id="r39" value="Average" > Average
<input type="radio" name="rate9" id="r40" value="Excellent">Excellent </td>
</tr>
</table>
<input type ="submit" class="btn btn-primary" name="submit" value="Submit"  />
<a href="facultylist.jsp"><input type="button" class="btn btn-primary" name="Cancel" value="Cancel" /></a>
</center>

</form>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>