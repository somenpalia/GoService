<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Service Centre Portal</title>
      <link href='/GoService/CSS/header.css' type='text/css' rel='stylesheet'>
      <link href='/GoService/CSS/footer.css' type='text/css' rel='stylesheet'>
</head>
<body>

 <!--.........Header start.........-->
		 
		 <div class='header'>
		    <div class='header-in'>
		        <a href='index.html'>
		           <img src='/GoService/Images/logo.png'><br>
		        </a>
		    </div>	
		    <div class='header-in' style='float:right;color:white;padding:15px;'>
		        <a href='#'>
		           GoService.com
		        </a>
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
		       <div  class="dropdown" style="float:left;padding:10.5px;color:black;text-decoration:none;width:5%;">
                   <a href='#'>Pricing</a>
               </div>
               <div class="dropdown" style="float:left;padding:10.5px;color:black;text-decoration:none;width:5%;">
                   <a href='#'>FAQs</a>
               </div>
               <div class="dropdown" style="float:left;padding:10.5px;color:black;text-decoration:none;width:5%;">
                   <a href='#'>Benefits</a> 
               </div>
               <div class="dropdown" style="float:right;">
                   <button class="dropbtn">Hello! Sign in</button>
                   <div class="dropdown-content" style='width:98%; height:90px;'>
                      <div class="dropbtn-in"><a href='/GoService/JSP/scLogin.jsp'>Sign in</a></div>
                       <table>
                         <tr><td >
                          New User?
                          <a href="/GoService/JSP/scRegister1.jsp" style='color:blue;'>Sign Up</a>
                          </td>
                        </tr>
                      </table>
                  </div>
               </div>
		</div>
		 
<!--___________________Navigation end__________________-->
		 
<!--____________________Content start__________________-->

        <div class='content'>
            <div class="mySlides fade" style="width:100%;height:300px;">
                 <img src="/GoService/Images/sc1.jpg" style="width:100%;height:298px;float:left;margin-left:0px;">
            </div>
            <div class='description' style='height:40px;'>
		        
             </div>
            <div class='description' style='height:70px;padding:10px;text-align:center;color:gray;'>
		        <h1>Grow your service with the leader in Indian e-commerce</h1>
            </div>
            <div class="mySlides fade" style="width:100%;height:400px;float:left;">
                 <div class="mySlides fade" style="width:50%;height:400px;float:left;">
                      <img src="/GoService/Images/sc21.jpg" style="width:100%;height:400px;">
                 </div>
                 <div class="mySlides fade" style="width:50%;height:400px;float:left;">
                        <img src="/GoService/Images/sc22.jpg" style="width:100%;height:400px;">
                 </div>
            </div>
            <div class='description' style='height:40px;'>
		        
             </div>
             <div class="mySlides fade" style="width:100%;height:400px;">
                 <img src="/GoService/Images/sc3.png" style="width:100%;height:398px;float:left;margin-left:0px;">
            </div>
             
       </div>

<!--____________________Content end_____________________-->
        
<!--__________________Footer start______________________-->
		 
		 <div class='foot'>
		      <div class='nav-top-foot'>
                 <a href="#" style='color:white;'>Back to Top</a>
             </div>
             <div class='foot-help'>
                <div class='foot-help-in' style='width:40%;'>
                    <table>
                       <tr><th>Get to know us</th></tr>
                       <tr><td><a href='#'>About us</a></td></tr>
                       <tr><td><a href='#'>Careers</a></td></tr>
                    </table>
                </div>
                <div class='foot-help-in' style='width:20%;'>
                     <table>
                       <tr><th>GoService</th></tr>
                       <tr><td><a href='#'>Delhi</a></td></tr>
                       <tr><td><a href='#'>Mumbai</a></td></tr>
                       <tr><td><a href='#'>Lucknow</a></td></tr>
                       <tr><td><a href='#'>Kolkata</a></td></tr>
                       <tr><td><a href='#'>Raipur</a></td></tr>
                       <tr><td><a href='#'>Chennai</a></td></tr>
                    </table>
                </div>
                <div class='foot-help-in' style='width:40%;'>
                    <table>
                       <tr><th>Let us help you</th></tr>
                       <tr><td><a href='#'>Your account</a></td></tr>
                       <tr><td><a href='#'>GoService app download</a></td></tr>
                       <tr><td><a href='#'>help</a></td></tr>
                    </table>   
                </div>
             </div>
             <div class='foot-copyright'>
               <h3> Follow us</h3>
               <a href='#'><img src='/GoService/Images/facebook.png'></a>&nbsp;&nbsp;
               <a href='#'><img src='/GoService/Images/twitter.jpg'></a>&nbsp;&nbsp;
               <a href='#'><img src='/GoService/Images/linkedin.png'></a>&nbsp;&nbsp;
               <a href='#'><img src='/GoService/Images/instagram.png'></a><br><br><br>
               &copy; Copyright 2018 by GoService. All Rights reserved
             </div>
		 </div>
		 
<!--___________________Footer end_______________________-->
	  

</body>
</html>