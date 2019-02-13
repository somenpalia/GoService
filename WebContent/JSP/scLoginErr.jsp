<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Centres Login Portal</title>
<link href='/GoService/CSS/login.css' type='text/css' rel='stylesheet'>
</head>
<body>
<body>
         <center>
        <img src='/GoService/Images/logo.png'>
        <div class='space'></div>
        <form action='logDao' method='post'>
            <fieldset>
               <h3 style="color:red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Invalid email or password!</h3>
               <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login</h1>
               Email<br>
               <input type='email' name='u_email' required><br>
               Password<br>
               <input type='password' name='u_pass' required><br>
               <input type='submit' value='continue'><br><br>
               New to GoService?<br><br>
               <a href='/GoService/JSP/scRegister1.jsp'>Create your GoService account</a>
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