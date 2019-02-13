<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import='rs.bo.UserBo' %>
      <%UserBo user=(UserBo)session.getAttribute("user"); %>
     

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link href='/GoService/CSS/index.css' type='text/css' rel='stylesheet'>
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
                   <td><a href="/GoService/JSP/requestPage.jsp?mobile=Samsung">Samsung</a></td>
                   <td><a href="#">LG</a></td>
                   <td><a href="#">Voltas</a></td>
                   <td><a href="#">LG</a></td>
                   <td><a href="#">Usha</a></td>
                   <td><a href="#">LG</a></td>
                 </tr>
                 <tr>
                   <td><a href="/GoService/JSP/requestPage.jsp?mobile=MI">MI</a></td>
                   <td><a href="#">Sony</a></td>
                   <td><a href="#">Hitachi</a></td>
                   <td><a href="#">Mitashi</a></td>
                   <td><a href="#">Havells</a></td>
                   <td><a href="#">Videocon</a></td>
                 </tr>
                 <tr>
                   <td><a href="/GoService/JSP/requestPage.jsp?mobile=Moto">Moto</a></td>
                   <td><a href="#">Videocon</a></td>
                   <td><a href="#">Lloyod</a></td>
                   <td><a href="#">Whirlpool</a></td>
                   <td><a href="#">Bajaj</a></td>
                   <td><a href="#">Samsung</a></td>
                 </tr>
                 <tr>
                   <td><a href="/GoService/JSP/requestPage.jsp?mobile=IPhone">IPhone</a></td>
                   <td><a href="#">Onida</a></td>
                   <td><a href="#">Whirlpool</a></td>
                   <td><a href="#">Godrej</a></td>
                   <td><a href="#">Orient</a></td>
                   <td><a href="#">Whirlpool</a></td>
                 </tr>   
                 <tr>
                   <td><a href="/GoService/JSP/requestPage.jsp?mobile=Nokia">Nokia</a></td>
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
                   <td><a href="#">Asus</a></td>
                   <td><a href="#">Samsung</a></td>
                   <td><a href="#">Panasonic</a></td>
                   <td></td>
                   <td></td>
                   <td><a href="#">Haier</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Oppo</a></td>
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
                      <button class="dropbtn-in"><a href='/JSP/logout.jsp'>Sign out</a></button>
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

<!--_________________Main content start________________-->
		 
		 <div class='content'>
	<!-- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -->

<div class="slideshow-container">

<div class="mySlides fade" style="width:100%;height:300px;">
  
  <img src="/GoService/Images/GoService1.jpg" style="width:100%;height:298px;float:left;margin-left:0px;">
  
</div>

<div class="mySlides fade"style="width:100%;height:300px;">
  
  <img src="/GoService/Images/GoService2.png" style="width:100%;height:298px;float:left;margin-left:0px;">
  
</div>

<div class="mySlides fade"style="width:100%;height:300px;">
  
  <img src="/GoService/Images/GoService3.png" style="width:100%;height:298px;float:left;margin-left:0px;">
  
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>



<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
	 
	<!-- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -->
           <div class='description'>
		        <h2>Top rated Mobile Service Centre</h2>
             </div>
             <div class='gallary'>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/mi.jpg" alt="MI Service Centre">
                    </a>
                    <div class="desc">MI Service center(Qdigi) Delhi 01122422917</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/samsung.png" alt="Samsung Service Centre">
                    </a>
                    <div class="desc">Samsung Service Center Janakpuri Delhi 01169000217</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/moto.jpg" alt="Motorola Service Centre">
                    </a>
                    <div class="desc">Moto Service Center New Delhi 09210345345</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/asus.jpg" alt="Asus Service Centre">
                    </a>
                    <div class="desc">Asus Service Center New Delhi 01148784422</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/iPhone.png" alt="IPhone Service Centre">
                    </a>
                    <div class="desc">Apple Service Center New Delhi 09015802227</div>
                 </div> 
             </div>
             <div class='description'>
                  <h2>Top rated Service Centre of TV</h2>
             </div>
             <div class='gallary'>
		         <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/lg.jpg" alt="LG Service Centre">
                    </a>
                    <div class="desc">LG Service Center New Delhi 08800768115</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/onida.jpg" alt="Onida Service Centre">
                    </a>
                    <div class="desc">Onida Service Center Delhi 07792950792</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/sony.png" alt="Sony Service Centre">
                    </a>
                    <div class="desc">Star Electronics New Delhi 01125774450</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/videocon.png" alt="Videocon Service Centre">
                    </a>
                    <div class="desc">Videocon Service Center Gurugram 09587565361</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/panasonic.png" alt="Panasonic Service Centre">
                    </a>
                    <div class="desc">M S Services Gurugram 09234526711</div>
                 </div> 
             </div>
             <div class='description'>
                  <h2>Top rated Service Centre of Fridge</h2>
             </div>
             <div class='gallary'>
		         <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/whirlpool.jpg" alt="Whirlpool Service Centre">
                    </a>
                    <div class="desc">Whirlpool Service Center Delhi 09213736041</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/mitashi.jpg" alt="Mitashi Service Centre">
                    </a>
                    <div class="desc">Mitashi Service Center Delhi 09895341389</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/LGfrige.jpg" alt="LG Service Centre">
                    </a>
                    <div class="desc">LG Service Center Delhi 08800768115</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/godrej.jpg" alt="Godrej Service Centre">
                    </a>
                    <div class="desc">Godrej Service Centre Delhi 08559940306</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/samsungFrige.jpg" alt="Samsung Service Centre">
                    </a>
                    <div class="desc">Samsung Service Center Noida 09197861123</div>
                 </div>
             </div>
             <div class='description'> 
                   <h2>Top rated Service Centre of AC</h2>
             </div>
             <div class='gallary'>
		         <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/lloyd.jpg" alt="Lloyd Service Centre">
                    </a>
                    <div class="desc">Lloyd Service Centre Delhi 09899781234</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/voltas.jpg" alt="Voltas Service Centre">
                    </a>
                    <div class="desc">AC Service Center Delhi 09716916937</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/hitachi.jpg" alt="Hitachi Service Centre">
                    </a>
                    <div class="desc">Hitachi Service Centre Delhi 08285972605</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/LGAC.png" alt="LG Service Centre">
                    </a>
                    <div class="desc">AC Service Center Delhi 09716916937</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/whirpohoolAC.jpg" alt="Whirlpool Service Centre">
                    </a>
                    <div class="desc">Whirlpool Service Center Delhi 09213736041</div>
                 </div>
             </div>
             <div class='description'>
                   <h2>Top rated Service Centre of Fan</h2>
             </div>
             <div class='gallary'>
		         <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/usha.jpg" alt="Usha Service Centre">
                    </a>
                    <div class="desc">Usha Fan New Delhi 09843453485</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/havells.png" alt="Havells Service Centre">
                    </a>
                    <div class="desc">Havells Galaxy Gurugram 09711030994</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/orient.jpg" alt="Orient Service Centre">
                    </a>
                    <div class="desc">Orient Electric New Delhi 18001037574</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/crompton.jpg" alt="Crompton Service Centre">
                    </a>
                    <div class="desc">Crompton Service Center New Delhi 09136079325</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/bajaj.png" alt="Bajaj Service Centre">
                    </a>
                    <div class="desc">Bajaj Electrical New Delhi 09711062866</div>
                 </div>
             </div>
             <div class='description'>
                   <h2>Top rated Service Centre of Washing Machine</h2>
             </div>
             <div class='gallary'>
		         <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/LGWM.jpg" alt="LG Service Centre">
                    </a>
                    <div class="desc">LG Service Center Delhi 08800768115</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/haier.jpg" alt="Haier Service Centre">
                    </a>
                    <div class="desc">Haier Appliances India Pvt Ltd Delhi 18001029999</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/whirlpoolWM.jpg" alt="Whirlpool Service Centre">
                    </a>
                    <div class="desc">Whirlpool Service Center Delhi 09213736041</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/godrejWM.jpg" alt="Godrej Service Centre">
                    </a>
                    <div class="desc">Gunjan Technologies Pvt Ltd Delhi 01142418891</div>
                 </div>
                 <div class='gallary-in'>
		            <a href="#">
                      <img src="/GoService/Images/onidaWM.jpg" alt="Onida Service Centre">
                    </a>
                    <div class="desc">Onida Customer Elation Centre Gurugram 07073064403</div>
                 </div>
             </div>
             <div style='height:50px;background:white;float:left;width:100%;'>
             </div>
        </div>
		 
<!--__________________Main content end_________________-->

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