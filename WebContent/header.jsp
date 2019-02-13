<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link href='${pageContext.request.contextPath}/CSS/header.css' type='text/css' rel='stylesheet'>
</head>
<body>
		 <!--.........Header start.........-->
		 
		 <div class='header'>
		    <div class='header-in'>
		        <a href='index.html'>
		           <img src='${pageContext.request.contextPath}\Images\logo.png'>
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
		             <li><a href='index.html'><img src='${pageContext.request.contextPath}/Images/home.png' style='height:18px;'></a></li>
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
                   <button class="dropbtn">Sell</button>
                   <div class="dropdown-content" style='width:117%;'>
                <table>
                 <tr>
                   <th><h4>Mobile</h4></th>
                   <th><h4>TV</h4></th>
                   <th><h4>Refrigrator</h4></th>
                   <th><h4>Fan</h4></th>
                 </tr>
                 <tr>
                   <td><a href="#">Samsung</a></td>
                   <td><a href="#">LG</a></td>
                   <td><a href="#">LG</a></td>
                   <td><a href="#">Usha</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">MI</a></td>
                   <td><a href="#">Sony</a></td>
                   <td><a href="#">Mitashi</a></td>
                   <td><a href="#">Havells</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Moto</a></td>
                   <td><a href="#">Videocon</a></td>
                   <td><a href="#">Whirlpool</a></td>
                   <td><a href="#">Bajaj</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Asus</a></td>
                   <td><a href="#">Onida</a></td>
                   <td><a href="#">Godrej</a></td>
                   <td><a href="#">Orient</a></td>
                 </tr>   
                 <tr>
                   <td><a href="#">Oppo</a></td>
                   <td><a href="#">Panasonic</a></td>
                   <td><a href="#">Samsung</a></td>
                   <td><a href="#">Crompton</a></td>
                 </tr>
                 <tr>
                   <td><a href="#">Gionee</a></td>
                   <td><a href="#">Philips</a></td>
                   <td></td>
                   <td></td>
                 </tr>
                 <tr>
                   <td><a href="#">IPhone</a></td>
                   <td><a href="#">Samsung</a></td>
                   <td></td>
                   <td></td>
                 </tr>
                 <tr>
                   <td><a href="#">Nokia</a></td>
                   <td></td>
                   <td></td>
                   <td></td>
                 </tr>
                 </table>
                  </div>
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
                   <button class="dropbtn">Hello! Sign in</button>
                   <div class="dropdown-content" style='width:98%; height:90px;'>
                      <button class="dropbtn-in"><a href='#'>Sign in</a></button>
                       <table>
                         <tr><td >
                          New User?
                          <a href="#" style='color:blue;'>Sign Up</a>
                          </td>
                        </tr>
                      </table>
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
</body>
</html>