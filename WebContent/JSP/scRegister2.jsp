<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Centre Registration 2</title>
<link href='/GoService/CSS/register.css' type='text/css' rel='stylesheet'>


<script>
function validateForm()                                   
{
    var name = document.forms["RegForm"]["sc_name"];              
    var address = document.forms["RegForm"]["sc_addr"];     
    var contact = document.forms["RegForm"]["sc_contact"];  
  
    if (name.value == "")                                 
    {
        window.alert("Please enter Service Centre name.");
        name.focus();
        return false;
    }
    if (name.value.length<4)                                 
    {
        window.alert("Please enter valid name.");
        name.focus();
        return false;
    }
    
    if (address.value == "")                                  
    {
        window.alert("Please enter Service Centre address.");
        email.focus();
        return false;
    }
  
    if (contact.value == "")                       
    {
        window.alert("Please enter contact no.");
        password.focus();
        return false;
    }

    return true;
}</script>

</head>
<body>

<center>
        <h1 style='color:gray;'>Step 2</h1>
        <div class='space'></div>
        <form name='RegForm' action='/GoService/scRegDao2' method='post' onsubmit='return validateForm()' enctype="multipart/form-data" >
            <fieldset style='width:28%;'> 
               <h1>&nbsp;&nbsp;Service Centre Info</h1>
               Service Centre Name<br>
               <input type='text' name='sc_name'><br>
               Address<br>
               <input type='text' name='sc_addr'><br>
               Contact<br>
               <input type='number' name='sc_contact'><br>
               Document<br>
               <input type='file' name='sc_doc'><br><br>
               Repairing Device type :<select name="device">
                                          <option value="Mobile">mobile</option>
                                          <option value="TV">TV</option>
                                          <option value="AC">AC</option>
                                          <option value="Refrigrator">Refrigrator</option>
                                          <option value="Washing machine">washing machine</option>
                                          <option value="Fan">fan</option>
                                     </select><br><br>
                             Company:<select name="company">
                                          <option value="Any">Any</option>
                                          <option value="MI">MI</option>
                                          <option value="Samsung">Samsung</option>
                                          <option value="IPhone">IPhone</option>
                                          <option value="Nokia">Nokia</option>
                                          <option value="Moto">Moto</option>
                                          <option value="LG">LG</option>
                                          <option value="Sony">Sony</option>
                                          <option value="Videocon">Videocon</option>
                                          <option value="Onida">Onida</option>
                                          <option value="Panasonic">Panasonic</option>
                                          <option value="Whirlpool">Whirlpool</option>
                                          <option value="Godrej">Godrej</option>
                                          <option value="Mitashi">Mitashi</option>
                                          <option value="Lloyd">Lloyd</option>
                                          <option value="Voltas">Voltas</option>
                                          <option value="Usha">Usha</option>
                                          <option value="Havells">Havells</option>
                                          <option value="Orient">Orient</option>
                                          <option value="Crompton">Crompton</option>
                                          <option value="Bajaj">Bajaj</option>
                                          <option value="Haier">Haier</option>
                                     </select><br>
               <input type='submit' value='submit'><br><br>
               
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