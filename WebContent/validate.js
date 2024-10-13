function validate1()
{
 var name= /^(?=.*\d)(?=.*[a-zA-Z]).{4,12}$/;
  var fname = document.getElementById( "t1" );
 if( fname.value==" "  || (!(fname.value.match(name)))  )
 {
  alert("Registration number should be alphanumeric");
  return false;
 }
 var password1= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/;
 var password = document.getElementById( "t2" );
 if( password.value==" " ||(!(password.value.match(password1))) )
 {
  alert("password must be 6 character long and should contain atleat one speacial ane Upper case latter");
  return false;
 }
 else
 {
  return true;
 }
}
function validate2()
{
 var error="";
 var fname = document.getElementById( "t1" );
 if( fname.value == "" )
 {
  alert("Please enter name");
  
  return false;
 }
 var email = document.getElementById( "t2" );
 if( email.value == "" || email.value.indexOf( "@" ) == -1 )
 {
  alert("Please enter valid email");
  return false;
 }
 var password1= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/;
 var password = document.getElementById( "t3" );
 if( password.value==" " ||(!(password.value.match(password1))) )
 {
  alert("password must be 6 character long and should contain atleat one speacial ane Upper case latter");
  return false;
 }
 var branch=document.getElementById("t4");
 if(branch.value=="" )
 {
 alert("Please enter valid branch");
 return false;
 }
 else
 {
  return true;
 }
}
function validate3()
{
 var error="";

 var name = document.getElementById( "t1" );
 if( name.value == ""  )
 {
  alert("Please enter valid Registration number");
  return false;
 }
 var password1= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/;
 var password = document.getElementById( "t2" );
 if( password.value==" " ||(!(password.value.match(password1))) )
 {
  alert("password must be 6 character long and should contain atleat one speacial ane Upper case latter");
  return false;
 }
 else
	 {
	 return true;
	 }
	 }
function validate4()
{
 var error="";

 var email = document.getElementById( "t1" );
 if( email.value == "" || email.value.indexOf( "@" ) == -1 )
 {
  alert("Please enter valid email");
  return false;
 }
 var password1= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/;
 var password = document.getElementById( "t2" );
 if( password.value==" " ||(!(password.value.match(password1))) )
 {
  alert("password must be 6 character long and should contain atleat one speacial ane Upper case latter");
  return false;
 }
 else
	 {
	 return true;
	 }
	 }
function validate5()
{
 var error="";

 var reg = document.getElementById( "t1" );
 if( reg.value == ""  )
 {
  alert("Please enter valid Registration no");
  return false;
 }
  var fname = document.getElementById( "t2" );
 if( fname.value == "" )
 {
  alert("Please enter valid password");
  
  return false;
 }
 else
	 {
	 return true;
	 }
	 }
function validate6()
{
 var error="";

 var email = document.getElementById( "t1" );
 if( email.value == "" || email.value.indexOf( "@" ) == -1 )
 {
  alert("Please enter valid email");
  return false;
 }
  var fname = document.getElementById( "t2" );
 if( fname.value == "" )
 {
  alert("Please enter name");
  
  return false;
 }
 else
	 {
	 return true;
	 }
	 }
function ValidateForm(){
	var rp = document.getElementById("r1");
	var rg = document.getElementById("r2");
	var ra = document.getElementById("r3");
	var re = document.getElementById("r4");
if ( ( rp.checked == false ) &&( rg.checked == false ) && (ra.checked == false ) && ( re.checked == false ) ) 
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp5 = document.getElementById("r5");
var rg6 = document.getElementById("r6");
var ra7 = document.getElementById("r7");
var re8 = document.getElementById("r8");
if ( ( rp5.checked == false ) &&( rg6.checked == false ) && (ra7.checked == false ) && ( re8.checked == false ) ) 
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp9 = document.getElementById("r9");
var rg10 = document.getElementById("r10");
var ra11 = document.getElementById("r11");
var re12 = document.getElementById("r12");
if ( ( rp9.checked == false ) &&( rg10.checked == false ) && (ra11.checked == false ) && ( re12.checked == false ) )  
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp13 = document.getElementById("r13");
var rg14 = document.getElementById("r14");
var ra15 = document.getElementById("r15");
var re16 = document.getElementById("r16");
if ( ( rp13.checked == false ) &&( rg14.checked == false ) && (ra15.checked == false ) && ( re16.checked == false ) ) 
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp17 = document.getElementById("r17");
var rg18 = document.getElementById("r18");
var ra19 = document.getElementById("r19");
var re20 = document.getElementById("r20");
if ( ( rp17.checked == false ) &&( rg18.checked == false ) && (ra19.checked == false ) && ( re20.checked == false ) )  
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp21 = document.getElementById("r21");
var rg22 = document.getElementById("r22");
var ra23 = document.getElementById("r23");
var re24 = document.getElementById("r24");
if ( ( rp21.checked == false ) &&( rg22.checked == false ) && (ra23.checked == false ) && ( re24.checked == false ) ) 
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp25 = document.getElementById("r25");
var rg26 = document.getElementById("r26");
var ra27 = document.getElementById("r27");
var re28 = document.getElementById("r28");
if ( ( rp25.checked == false ) &&( rg26.checked == false ) && (ra27.checked == false ) && ( re28.checked == false ) )  
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp29 = document.getElementById("r29");
var rg30 = document.getElementById("r30");
var ra31 = document.getElementById("r31");
var re32 = document.getElementById("r32");
if ( ( rp29.checked == false ) &&( rg30.checked == false ) && (ra31.checked == false ) && ( re32.checked == false ) ) 
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp33 = document.getElementById("r33");
var rg34 = document.getElementById("r34");
var ra35 = document.getElementById("r35");
var re36 = document.getElementById("r36");
if ( ( rp33.checked == false ) &&( rg34.checked == false ) && (ra35.checked == false ) && ( re36.checked == false ) )  
{
alert ( "Please select atmost one option" ); 
return false;
}
var rp37 = document.getElementById("r37");
var rg38 = document.getElementById("r38");
var ra39 = document.getElementById("r39");
var re40 = document.getElementById("r40");
if ( ( rp37.checked == false ) &&( rg38.checked == false ) && (ra39.checked == false ) && ( re40.checked == false ) ) 
{
alert ( "Please select atmost one option" ); 
return false;
}
else
	{
return true;
	}
}