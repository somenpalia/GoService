<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request Page</title>
<link href='/GoService/CSS/index.css' type='text/css' rel='stylesheet'>
      <link href='/GoService/CSS/header.css' type='text/css' rel='stylesheet'>
      <link href='/GoService/CSS/footer.css' type='text/css' rel='stylesheet'>
      <link href='/GoService/CSS/scHome.css' type='text/css' rel='stylesheet'>
</head>
<body>
	<%@page import='rs.dao.ServiceCentreDao'%>
	<%@page import='rs.bo.FetchedSCBo'%>
	<%@page import='rs.daoFactory.DaoFactory'%>
	<%@page import='java.util.*'%>
	<%@page import='java.io.*'%>

	<%
                    String param=request.getParameter("mobile");
                    String mobile=param.toUpperCase();
		            ServiceCentreDao dao=DaoFactory.getServiceCentreImp();
	                ArrayList<FetchedSCBo> list=dao.fetchSC(mobile);
	                
	%>

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
		
		<hr style='color:gray;'>
		 
<!--___________________Navigation end__________________-->

<!--___________________Content start__________________-->
	<div style='float: left; width: 100%;'>
		<table class='displayTable'>
			<%
				if(!list.isEmpty()){
			%>
			<caption>
				<h2><%=param %> Service Centres</h2>
			</caption>
			<tr>
				<th>Service Centre's Name</th>
				<th>Address</th>
				<th>Contact</th>
				<th>Rating</th>
				<th>Reviews</th>
				<td>Request</td>
			</tr>
			<%
				for(FetchedSCBo obj : list){
			%>
			<%Random rand=new Random();
			      float rating=(rand.nextInt(40)+11)/10;
			      int reviews=rand.nextInt(401)+100;
			      %>
			<tr>
				<td><%=obj.getName()%></td>
				<td><%=obj.getAddress()%></td>
				<td><%=obj.getContact()%></td>
				<td><%=rating%></td>
				<td><%=reviews%></td>
				<%long id=obj.getId(); %>
				<td><a href="/GoService/JSP/placeRequest.jsp?id=<%=id%>"  style='color:blue;'>Place Request</a></td>
			</tr>
			<%
				}
				}else{
			%>
	<center>		<h1 style='color:red;'>Some error occured</h1>  </center>
			<%
				}
			%>
			<tr>
			</tr>
		</table>
	</div>
	<div style='height: 70px; float: left; width: 100%;'></div>

	<!--___________________Content end__________________-->


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