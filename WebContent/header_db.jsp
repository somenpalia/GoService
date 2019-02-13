
<%
	rs.bo.DeliveryBoysBo empData = (rs.bo.DeliveryBoysBo) session
			.getAttribute("dbUser");
	String name = "User";
	try {
		name = empData.getName();
	} catch (Exception e) {
		System.out.println("Name is empty;");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link href='${pageContext.request.contextPath}/CSS/header.css'
	type='text/css' rel='stylesheet'>
</head>
<body>
	<!--.........Header start.........-->

	<div class='header'>
		<div class='header-in'>
			<a href='index.html'> <img
				src='${pageContext.request.contextPath}\Images\logo.png'>
			</a>
		</div>
		<div class="search-container">
			<form action="/#">
				<select id='search-select'>
					<option value="All">All</option>
					<option value="Mobiles">Mobiles</option>
					<option value="TV">TV</option>
					<option value="AC">AC</option>
					<option value="Fan">Fan</option>
					<option value="Refrigrator">Refrigrator</option>
					<option value="Washing Machine">Washing Machine</option>
				</select> <input id="search-input" type="text" name="search"> <input
					id="search-button" type="submit" value="search">
			</form>
		</div>
	</div>

	<!--.........Header end.........-->

	<!--_______________Navigation start________________-->

	<div class='nav' id='navbar'>
		<div class="dropdown" style="float: left;">
			<ul>
				<li><a href='${pageContext.request.contextPath}/JSP/emp_home.jsp'><img
						src='${pageContext.request.contextPath}/Images/home.png'
						style='height: 18px;'></a></li>
			</ul>
		</div>
		<div class="dropdown" style="float: left;">
			<button class="dropbtn">Service Centres</button>
			<div style="" class="dropdown-content" style='width:117%;float:left;'>

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

<%-- 		<div class="dropdown" style="float: left;">
			<a href="${pageContext.request.contextPath}/delivery_boys_controller">
				<button class="dropbtn">Delivery boy</button>
			</a>
			<div style="" class="dropdown-content" style='width:117%;float:left;'>
				<a>Add delivery boys</a>
			</div>
		</div>
 --%>		<%-- <div class="dropdown" style="float: left;">
			<a href="${pageContext.request.contextPath}/delivery_boys_controller">
				<button class="dropbtn">Delivery boy</button>
			</a>
			<div class="dropdown-content" style='width: 98%; height: 70px;'>
				
				<table>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td><a href="#" style='color: blue;'>Add<br></a>
						</td>
					</tr>
					
				</table>
			</div>
			</div>
 --%>
			<%
				if (!name.equals("User")) {
			%>

			<div class="dropdown" style="float: right;">
				<a href="../db_logout" style="color: blue"><button
						class="dropbtn" style="color: blue">Logout</button></a>
			</div>

			<%
				}
			%>
			<div class="dropdown" style="float: right;">
				<button class="dropbtn">
					Hello!
					<%=name%></button>
			</div>


		</div>


		<!--___________________Navigation end__________________-->
</body>
</html>