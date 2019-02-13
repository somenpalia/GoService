<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Centre Home</title>
<link href='/GoService/CSS/header.css' type='text/css' rel='stylesheet'>
<link href='/GoService/CSS/footer.css' type='text/css' rel='stylesheet'>
<link href='/GoService/CSS/scHome.css' type='text/css' rel='stylesheet'>
</head>
<body>
	<%@page import='rs.dao.RequestDao'%>
	<%@page import='rs.bo.FetchedReqBo'%>
	<%@page import='rs.bo.SCLogBo'%>
	<%@page import='rs.daoFactory.DaoFactory'%>
	<%@page import='java.util.ArrayList'%>
	<%@page import='java.io.*'%>
	<%
		            RequestDao dao=DaoFactory.getRequestImp();
	                String check=null;
	                ArrayList<FetchedReqBo> list=null;
	                check=(String)request.getAttribute("check");
	                if(check==null){
		                SCLogBo bo=(SCLogBo)session.getAttribute("providerLog");
		                String email=bo.getMail();
		                long id=dao.getSCId(email);
	                	list=dao.fetchReq(id);
		                session.setAttribute("list",list);
	                }else{
	                	list=(ArrayList<FetchedReqBo>)request.getAttribute("list");
	                	session.setAttribute("list",list);
	                }
	%>

	<!--.........Header start.........-->

	<div class='header'>
		<div class='header-in'>
			<a href='index.html'> <img src='/GoService/Images/logo.png'><br>
			</a>
		</div>
		<div class='header-in'
			style='float: right; color: white; padding: 15px;'>
			<a href='#'> GoService.com </a>
		</div>
	</div>

	<!--.........Header end.........-->

	<!--_______________Navigation start________________-->

	<div class='nav' id='navbar'>
		<div class="dropdown" style="float: left;">
			<ul>
				<li><a href='/GoService/JSP/scHome.jsp'><img
						src='/GoService/Images/home.png' style='height: 18px;'></a></li>
			</ul>
		</div>
		<div class="dropdown"
			style="float: left; padding: 10.5px; color: black; text-decoration: none; width: 10%;">
			<a href='#'>Approved requests</a>
		</div>
		<div class="dropdown"
			style="float: left; padding: 10.5px; color: black; text-decoration: none; width: 8%;">
			<a href='/GoService/JSP/updRequest.jsp'>Update request</a>
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


	<hr style='color: gray;'>

	<!--___________________Navigation end__________________-->

	<!--___________________Content start__________________-->
	<div style='float: left; width: 100%;'>
		<table class='displayTable'>
			<%
				if(!list.isEmpty()){
			%>
			<caption>
				<h2>Latest Requests</h2>
			</caption>
			<tr>
				<th>Id</th>
				<th>Customer Name</th>
				<th>Address</th>
				<th>Contact</th>
				<th>Reciept</th>
				<th>Problem</th>
				<th>Date</th>
				<th>Status</th>
			</tr>
			<%
				for(FetchedReqBo obj : list){
			%>
			<tr>
				<td><%=obj.getId()%></td>
				<td><%=obj.getCustName()%></td>
				<td><%=obj.getAddress()%></td>
				<td><%=obj.getContact()%></td>
				<td>
				     <%
				     session.setAttribute("obj",obj);
				     %>
					<a    href='/GoService/imageController'
					         target='blank'
					         style='color:blue;'>Image<%=obj.getId()%>
					         </a>
				</td>
				<td><%=obj.getProblem()%></td>
				<td><%=obj.getDate()%></td>
				<% int index=list.indexOf(obj);%>
				<td><a href="/GoService/remController?index=<%=index%>" style='color:blue;'>Approve</a></td>
			</tr>
			<%
				}
				}else{
			%>
	<center>		<h1>No latest requests</h1>  </center>
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

	<div class='foot-copyright'>
		<h3>Follow us</h3>
		<a href='#'><img src='/GoService/Images/facebook.png'></a>&nbsp;&nbsp;
		<a href='#'><img src='/GoService/Images/twitter.jpg'></a>&nbsp;&nbsp;
		<a href='#'><img src='/GoService/Images/linkedin.png'></a>&nbsp;&nbsp;
		<a href='#'><img src='/GoService/Images/instagram.png'></a><br>
		<br>
		<br> &copy; Copyright 2018 by GoService. All Rights reserved
	</div>
	</div>

	<!--___________________Footer end_______________________-->

</body>
</html>