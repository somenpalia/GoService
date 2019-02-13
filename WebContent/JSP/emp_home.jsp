<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import = "rs.bo.*" %>
<%@page import = "rs.daoFactory.DaoFactory" %>
<%@page import = "rs.dao.EmployeeDao" %>
<%@page import = "java.util.ArrayList" %>

<%

// Getting employee details
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
EmployeeDao empDb = DaoFactory.getEmployee();
ArrayList<RequestEmpBo> requestData = empDb.getRequestDetails();

session.setAttribute("request_data", requestData);


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

#table{
width:90%;
text-align : center;
 margin:auto; 
margin-top:10px;
margin-bottom:150px;}

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

#myTable td button{
background-color:;}
</style>
<div id="table">
<h2>Requests</h2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">

<table id="myTable">
  <tr style="background-color:#f1f1f1">
    <th >Id</th>
    <th >Service center name</th>
    <th >Service centre Address</th>
    <th >Service center contact</th>
    <th >Customer name</th>
    <th >Customer address</th>
    <th >Customer contact</th>
    <th >Status</th>
  </tr>
  <%for(RequestEmpBo r : requestData){%>
	  
  <tr>
    <td><%= r.getId() %></td>
    <td><%= r.getServiceCentreName() %></td>
    <td><%= r.getServiceCentreAddress() %></td>
    <td><%= r.getServiceCentreContact() %></td>
    <td><%=r.getCustomerName() %></td>
    <td><%=r.getAddress() %></td>
    <td><%=r.getContact() %></td>
    
    <%if(!r.getStatus().equalsIgnoreCase("fetched")){%>
    	
    <td><button onclick="sendRequest(<%= r.getId() %>)" id="button"><%=r.getStatus() %></button></td>
    <% } else{%>
    <td><button id="button"><%=r.getStatus() %></button></td>
    	
    <% }%>
 
 
  </tr>
  
  <% } %>
  
</table>
</div>

<script>
function myFunction() {
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
}//myFuction


function sendRequest(id){
	//alert(name+" "+mobile);
	window.location.replace("emp_home.jsp?id=" + id );
	<%
	int id = 0;
	
	try{
		String idStr = (String) request.getParameter("id");
		id = Integer.parseInt(idStr);
		
		System.out.println("Id in emp home: "  + id);
	}catch(Exception e){
		
	}
	if(id!=0){
	request.setAttribute("id",id);
	RequestDispatcher rd = request.getRequestDispatcher("delivery_boys.jsp");
	rd.forward(request, response);
	}
	
	%>
}
</script>




</body>
<jsp:include page="../footer.jsp" />
</html>