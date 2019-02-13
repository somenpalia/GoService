<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% rs.bo.EmployeeBo empData = (rs.bo.EmployeeBo)session.getAttribute("empData"); 
	String name = "User";
	try{
		name = empData.getName();}
		catch(Exception e){
			System.out.println("Name is empty;");
		}%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee home</title>
</head>
<jsp:include page="../header_emp.jsp" /> 
<body>

<body>
   
  
        <center>
        <div style="padding: 30px; margin: 5%; width: 50%;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    ">
            <h2 style="margin-top: -7px;width:400px;color:red">You are logged out.<br><a href="delivery_boys_login.jsp">Click here</a> to login again.</h2>
            
            <hr> 
			
            </div>
        </center>
        
        
  
   
	
  </body>

</body>
 <jsp:include page="../footer.jsp" /> 
</html>