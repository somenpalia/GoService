<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="rs.bo.DeliveryBoysBo"%>
<%@ page import="rs.bo.EmployeeBo"%>
<%@ page import="rs.dao.DeliveryBoysDao"%>
<%@ page import="rs.daoFactory.DaoFactory"%>

<%
	DeliveryBoysDao db = DaoFactory.getDeliveryBoys();
    ArrayList<DeliveryBoysBo> dbData = db.getDetails();

	rs.bo.EmployeeBo empData = (rs.bo.EmployeeBo) session
	.getAttribute("empData");
	String name = "User";
	
	
	try {
		name = empData.getName();
	} catch (Exception e) {
		System.out.println("Name is empty;");
	}
%>
<%
int id = 0;
 try {
	 
id = (Integer) request.getAttribute("id");

System.out.println("id in delivery boys.jsp : " + id);
	
} catch (Exception e) {
	System.out.println("getAttribute se id ni le paa raha hai.");
} 

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employee home</title>
</head>
<jsp:include page="../header_emp.jsp" />

<body>

	<style>
* {
	box-sizing: border-box;
}

#table {
	width: 70%;
	text-align: center;
	margin: auto;
	margin-top: 100px;
	margin-bottom: 150px;
}

#myInput {
	background-image: url('/GoService/WebContent/Images/search-icon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}

#myTable {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	font-size: 18px;
}

#myTable th, #myTable td {
	text-align: left;
	padding: 12px;
}

#myTable tr {
	border-bottom: 1px solid #ddd;
}

#myTable tr:hover {
	background-color: #f1f1f1;
}

#myTable td button {
	background-color:;
}
</style>
	<div id="table">
		<input type="text" id="myInput" onkeyup="myFunction()"
			placeholder="Search for names.." title="Type in a name">

		<table id="myTable">
			<tr style="background-color: #f1f1f1">
				<th>Delivery boy name</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Availability</th>
			</tr>
			<%  try{
				for(DeliveryBoysBo d : dbData){
			%>

			<tr>
				<td><%=d.getName()%></td>
				<td><%=d.getMobile()%></td>
				<td><%=d.getEmail()%></td>
				<%
					if(d.getStatus().equalsIgnoreCase("Available")) {
				%>
				<td><a href="delivery_boys_controller"><button style="color:green"><%=d.getStatus()%></button></a>
					<button onclick="sendRequest('<%=d.getEmail()%>')">Request</button>
				</td>
				<%
					}else{
				%>
				<td><a href="delivery_boys_controller"><button style="color:red"><%=d.getStatus()%></button></a>
				</td>
				<%} %>
			</tr>

			<%
				}}catch(Exception e){e.printStackTrace();}
			%>

		</table>
	</div>

	<script>
		function myFunction(email) {
			var input, filter, table, tr, td, i;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[1];
				if (td) {
					if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}

		function sendRequest(email) {
			//alert(email);
			
		<%String nameC = (String) request.getAttribute("name");
		String mobileC = (String) request.getAttribute("mobile");%>
		
		window.location.replace("delivery_boys.jsp?email=" + email + "&id=" + <%=id%>);
		
		<%
		
			String testEmail = null;
			int id2 = 0;
		String emailDb = request.getParameter("email");
			String idStr = (String) request.getParameter("id");
			
			
			System.out.println("Email in jsp : " + emailDb);
			
			try{
			id2 = Integer.parseInt(idStr);
			System.out.println("Id2 in delivery boys.jsp : " + id2);
				testEmail = (String)request.getParameter("email");
			}catch(Exception e){
				e.printStackTrace();
			}
			if(testEmail!=null){
				
			request.setAttribute("email",emailDb);
			request.setAttribute("id",id2);
			
			RequestDispatcher rd = request.getRequestDispatcher("../delivery_boys_user");
			rd.forward(request, response);
			}%>
		}
	</script>




</body>
<jsp:include page="../footer.jsp" />
</html>