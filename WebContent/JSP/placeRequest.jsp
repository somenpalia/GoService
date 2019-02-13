<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Place Request</title>
<link href='/GoService/CSS/index.css' type='text/css' rel='stylesheet'>
      <link href='/GoService/CSS/header.css' type='text/css' rel='stylesheet'>
      <link href='/GoService/CSS/footer.css' type='text/css' rel='stylesheet'>
      <link href='/GoService/CSS/register.css' type='text/css' rel='stylesheet'>
<link href='/GoService/CSS/scRegister2.css' type='text/css' rel='stylesheet'>

<script>
function validateForm()                                   
{
    var name = document.forms["RegForm"]["c_name"];              
    var address = document.forms["RegForm"]["deliv_addr"];     
    var contact = document.forms["RegForm"]["c_contact"];  
    var problem= document.forms["RegForm"]["prob"];  
  
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
    
    if (address.value == "")                                  
    {
        window.alert("Please enter delivery address.");
        email.focus();
        return false;
    }
  
    if (contact.value == "")                       
    {
        window.alert("Please enter contact no.");
        password.focus();
        return false;
    }
    
    if (problem.value == "")                                 
    {
        window.alert("Please enter problem in your device.");
        name.focus();
        return false;
    }

    return true;
}</script>

</head>
<body>

<%String param=request.getParameter("id");
      long id=Long.parseLong(param);
%>

    <!--.........Header start.........-->
		 
		 <div class='header'>
		    <div class='header-in'>
		        <a href='/GoService/JSP/userHome.jsp'>
		           <img src='/GoService/Images/logo.png'><br>
		        </a>
		    </div>
		    <div  class="search-container">
                  <form  action="/#">
                     <select id='search-select'>
                           <option value="All">All</option>
                           <option value="Mobiles">Mobiles</option>
                           <option value="TV">TV</option>
                           <option value="AC">AC</option>
                           <option value="Fan">Fan</option>
                           <option value="Refrigrator">Refrigrator</option>
                           <option value="Washing Machine">Washing Machine</option>
                     </select>
                     <input id="search-input" type="text" name="search">
                     <input id="search-button" type="submit" value="search" >
                  </form>
            </div>		 
		 </div>
		 
		 <!--.........Header end.........-->
		 
<!--_______________Navigation start________________-->
		 
		 <div class='nav' id='navbar'>
		       <div class="dropdown" style="float:left;">
		          <ul>
		             <li><a href='index.html'><img src='/GoService/Images/home.png' style='height:18px;'></a></li>
		          </ul>
		       </div>
		       <div  class="dropdown" style="float:left;">
                   <button  class="dropbtn">Service Centres</button>
                   <div style="color=red;" class="dropdown-content" style='width:117%;float:left;'>
                           
                 <table>
                 <tr>
                   <th><h4>Mobile</h4></th>
                   <th><h4>TV</h4></th>
                   <th><h4>AC</h4></th>
                   <th><h4>Refrigrator</h4></th>
                   <th><h4>Fan</h4></th>
                   <th><h4>Washing Machine</h4></th>
                 </tr>
                 <tr>
                   <td><a href="#">Samsung</a></td>
                   <td><a href="#">LG</a></td>
                   <td><a href="#">Voltas</a></td>
                   <td><a href="#">LG</a></td>
                   <td><a href="#">Usha</a></td>
                   <td><a href="#">LG</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">MI</a></td>
                   <td><a href="#">Sony</a></td>
                   <td><a href="#">Hitachi</a></td>
                   <td><a href="#">Mitashi</a></td>
                   <td><a href="#">Havells</a></td>
                   <td><a href="#">Videocon</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Moto</a></td>
                   <td><a href="#">Videocon</a></td>
                   <td><a href="#">Lloyod</a></td>
                   <td><a href="#">Whirlpool</a></td>
                   <td><a href="#">Bajaj</a></td>
                   <td><a href="#">Samsung</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Asus</a></td>
                   <td><a href="#">Onida</a></td>
                   <td><a href="#">Whirlpool</a></td>
                   <td><a href="#">Godrej</a></td>
                   <td><a href="#">Orient</a></td>
                   <td><a href="#">Whirlpool</a></td>
                 </tr>   
                 <tr>
                   <td><a href="#">Oppo</a></td>
                   <td><a href="#">Panasonic</a></td>
                   <td><a href="#">LG</a></td>
                   <td><a href="#">Samsung</a></td>
                   <td><a href="#">Crompton</a></td>
                   <td><a href="#">Onida</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Gionee</a></td>
                   <td><a href="#">Philips</a></td>
                   <td><a href="#">Samsung</a></td>
                   <td></td>
                   <td></td>
                   <td><a href="#">Godrej</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">IPhone</a></td>
                   <td><a href="#">Samsung</a></td>
                   <td><a href="#">Panasonic</a></td>
                   <td></td>
                   <td></td>
                   <td><a href="#">Haier</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Nokia</a></td>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
                 </tr>
                 </table>
               
                  </div>
                </div>
               <div class="dropdown" style="float:left;">
<!--       <button class="dropbtn">Sell</button>       -->
                     <ul>
                          <li><a href='/GoService/JSP/scIndex.jsp'>Service Provider</a></li>
                     </ul>
               </div>
               <div class="dropdown" style="float:left;">
                   <button class="dropbtn">Customer Services</button>
                   <div class="dropdown-content" style='width:100%; height:220px'>
                      <table>
                         <tr>
                            <td style='height:40px;'><a href='#'>Your Requests</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Re-repair</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Manage Address</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Payment Setting</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Account Setting</a></td>
                         </tr>
                      </table>
                  </div>
               </div>
               <div class="dropdown" style="float:right;">
                  <button class="dropbtn">Hello! Ravi</button>
                   <div class="dropdown-content" style='width:98%; height:43px;'>
                      <button class="dropbtn-in"><a href='/GoService/JSP/logout.jsp'>Sign out</a></button>
                  </div>
                   
               </div>
               <div class="dropdown" style='float:right;'>
                   <button class="dropbtn">Your requests</button>
                   <div class="dropdown-content" style='width:100%; height:250px;'>
                      <table>
                         <tr>
                            <td style='height:40px;'><a href='#'>Your Account</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Your requests</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Your visited centres</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Your reccomendations</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Your seller account</a></td>
                         </tr>
                         <tr>
                            <td style='height:40px;'><a href='#'>Your apps & devices</a></td>
                         </tr>
                      </table>
                  </div>
               </div>
		</div>
		 
<!--___________________Navigation end__________________-->


<center>
        <div class='space'></div>
        <form name='RegForm' action='../reqController?id=<%=id%>' method='post' onsubmit='return validateForm()' enctype="multipart/form-data">
            <fieldset style='width:28%;'> 
               <h1>&nbsp;&nbsp;&nbsp;&nbsp;Required Details</h1>
               Name<br>
               <input type='text' name='c_name'><br>
                Delivery Address<br>
               <input type='text' name='deliv_addr'><br>
               Contact<br>
               <input type='number' name='c_contact'><br>
                Problem<br>
               <input type='text' name='prob'><br>
               Reciept<br>
               <input type='file' name='doc'><br><br>
               <input type='submit' value='Place Request'><br><br>
               
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