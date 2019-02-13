<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GoService Registration</title>
<link href='/GoService/CSS/register.css' type='text/css' rel='stylesheet'>
<script>
function validateForm()                                   
{
    var name = document.forms["RegForm"]["u_name"];              
    var email = document.forms["RegForm"]["u_email"];   
    var phone = document.forms["RegForm"]["u_mobile"];  
    var password = document.forms["RegForm"]["u_pass"];  
    var re_password = document.forms["RegForm"]["u_re-pass"];
  
    if (name.value == "")                                 
    {
        window.alert("Please enter your name.");
        name.focus();
        return false;
    }
    if (name.value.length<4)                                 
    {
        window.alert("Please enter valid name.");
        name.focus();
        return false;
    }
  
    if (phone.value == "")                          
    {
        window.alert("Please enter your phone number.");
        phone.focus();
        return false;
    }
    if (phone.value.length != 10)                          
    {
        window.alert("Please enter valid phone number.");
        phone.focus();
        return false;
    }
    
    if (email.value == "")                                  
    {
        window.alert("Please enter your e-mail address.");
        email.focus();
        return false;
    }
  
    if (email.value.indexOf("@", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
  
    if (email.value.indexOf(".", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
  
    if (password.value == "")                       
    {
        window.alert("Please enter your password");
        password.focus();
        return false;
    }
    
    if (password.value.length < 6)                       
    {
        window.alert("Password must be of atleast 6 characters");
        password.focus();
        return false;
    }
    
    if (re_password.value == "")                       
    {
        window.alert("Please enter your password");
        password.focus();
        return false;
    }
    
    if (re_password.value.length < 6)                       
    {
        window.alert("Password must be of atleast 6 characters");
        password.focus();
        return false;
    }
    if((re_password.value.length!=password.value.length) || (!(re_password.value.match(password.value)))){
    	window.alert("Password not matched with re-entered password");
        password.focus();
        return false;
    }
    
  
    return true;
}</script>

</head>
<body>
<center>
        <img src='/GoService/Images/logo.png'>
        <div class='space'></div>
        <form name='RegForm' action='regDao' method='post' onsubmit='return validateForm()'>
            <fieldset>
               <h3 style="color:red;">&nbsp;&nbsp;&nbsp;&nbsp;Invalid email or email already
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;registered!</h3>
               <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create Account</h1>
               Your Name<br>
               <input type='text' name='u_name'><br>
               Mobile number<br>
               <input type='number' name='u_mobile' ><br>
               Email<br>
               <input type='email' name='u_email'><br>
               Password<br>
               <input type='password' name='u_pass' placeholder='Atleast 6 characters'><br>
               Re-enter Password<br>
               <input type='password' name='u_re-pass' placeholder='******'><br>
               <input type='submit' value='continue'><br><br>
               Already have an account? <a href='/GoService/JSP/login.jsp'>Sign in</a>
               
            </fieldset>
        </form>
        <div class='space'></div>
    </center>
    
             <div class='foot-copyright'>
               <h3> Follow us</h3>
               <a href='#'><img src='/GoService/Images/facebook.png'></a>&nbsp;&nbsp;
               <a href='#'><img src='/GoService/Images/twitter.jpg'></a>&nbsp;&nbsp;
               <a href='#'><img src='/GoService/Images/linkedin.png'></a>&nbsp;&nbsp;
               <a href='#'><img src='/GoService/Images/instagram.png'></a><br><br><br>
               &copy; Copyright 2018 by GoService. All Rights reserved
             </div>
             

</body>
</html>