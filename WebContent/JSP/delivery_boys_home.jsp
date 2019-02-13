<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="rs.bo.DeliveryBoysBo"%>
<%@ page import="rs.bo.EmployeeBo"%>
<%@ page import="rs.dao.DeliveryBoysDao"%>
<%@ page import="rs.daoFactory.DaoFactory"%>
<%@ page import="rs.bo.RequestEmpBo"%>

<%
	DeliveryBoysBo dbUser = (DeliveryBoysBo) session.getAttribute("dbUser");
    System.out.println(dbUser.getRequestId());
%>

<%
 
 DeliveryBoysDao dbDao = DaoFactory.getDeliveryBoys();
 RequestEmpBo req = dbDao.giveRequest(dbUser.getRequestId());

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employee home</title>
</head>
<jsp:include page="../header_db.jsp" />

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
				<th >Id</th>
			    <th >Service center name</th>
			    <th >Service centre Address</th>
			    <th >Service center contact</th>
			    <th >Customer name</th>
			    <th >Customer address</th>
			    <th >Customer contact</th>
				<th>Requests</th>
			</tr>

<%if(!dbUser.getRequests().equalsIgnoreCase("null")){%>
	
			<tr>
				<td><%= req.getId() %></td>
				<td><%= req.getServiceCentreName() %></td>
				<td><%= req.getServiceCentreAddress() %></td>
				<td><%= req.getServiceCentreContact() %></td>
				<td><%=req.getCustomerName() %></td>
				<td><%=req.getAddress() %></td>
				<td><%=req.getContact() %></td>
				
				
				
				<td>
					<%
						try {
							if (dbUser.getRequests().equals("Pending")) {
					%>
					<button onclick="sendRequest('changeStatus')" style="color: red">Approve</button>
					<%
						} else if (dbUser.getRequests().equals("Approved")) {
					%>
					<button style="color: green">Approved</button> <br>
					<button style="color:red" onclick="workCompleted(<%=dbUser.getRequestId()%>)">Work completed</button>
					
					<%
 	} else {
 %> No requests <%
 	}
 	} catch (Exception e) {
 		System.out.println("Null pointer wala error");
 	}
 %>
				</td>
			</tr>

<% }else {%>
	<h3>No Requests</h3>
<% } %>


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

		function sendRequest(status) {
			//alert(status);

			window.location.replace("delivery_boys_home.jsp?status=" + status);
	<%String testStatus = null;
	System.out.println("In change status");

			try {
				testStatus = (String) request.getParameter("status");
			} catch (Exception e) {

			}
			if (testStatus != null) {
				System.out.println("Towards chagne");
				request.setAttribute("status", testStatus);
				request.setAttribute("user_email", dbUser.getEmail());

				RequestDispatcher rd = request
						.getRequestDispatcher("../delivery_boys_change_status");
				rd.forward(request, response);
			}%>
		}
		
		function workCompleted(check){
			//alert(check);
			window.location.replace("delivery_boys_home.jsp?check=" + check);
			<%
			 int testCheck= 0;

					try {
						String testCheckStr = (String)request.getParameter("check");
						testCheck = Integer.parseInt(testCheckStr);
					} catch (Exception e) {

					}
					if (testCheck != 0) {
						request.setAttribute("user_email", dbUser.getEmail());
						request.setAttribute("requestId", testCheck);

						RequestDispatcher rd = request.getRequestDispatcher("../delivery_boys_change_work_status");
						rd.forward(request, response);
					}%>
			
		}
	</script>




</body>
<jsp:include page="../footer.jsp" />
</html>