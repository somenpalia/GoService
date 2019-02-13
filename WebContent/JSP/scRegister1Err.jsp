<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Centre Registration 1</title>
<link href='/GoService/CSS/register.css' type='text/css' rel='stylesheet'>

<script>
function validateForm()                                   
{
    var name = document.forms["RegForm"]["sc_name"];              
    var email = document.forms["RegForm"]["sc_email"];     
    var password = document.forms["RegForm"]["sc_pass"];  
    var re_password = document.forms["RegForm"]["sc_re-pass"];
  
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
        <h1 style='color:gray;'>Step 1</h1>
        <div class='space'></div>
        <form name='RegForm' action='/GoService/scRegDao1' method='post' onsubmit='return validateForm()'>
            <fieldset>
               <h3 style='color:red;'>Invalid email or email already registered!</h3> 
               <h1>&nbsp;&nbsp;Create Account</h1>
               Your Name<br>
               <input type='text' name='sc_name'><br>
               Email<br>
               <input type='email' name='sc_email'><br>
               Password<br>
               <input type='password' name='sc_pass' placeholder='Atleast 6 characters'><br>
               Re-enter Password<br>
               <input type='password' name='sc_re-pass' placeholder='******'><br>
               <input type='submit' value='continue'><br><br>
               Already have an account? <a href='/GoService/JSP/scLogin.jsp'>Sign in</a>
               
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