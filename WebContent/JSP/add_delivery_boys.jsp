<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Delivery Boys</title>
</head>

<jsp:include page="../header_emp.jsp" />
<body>
<center>
        <div style="padding: 25px; margin: 5%; width: 35%;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    ">
            <h1 style="margin-top: -7px">Register</h1>
            <hr> 
			<form action='/GoService/add_delivery_boys' method='get'>
			
				<input type='text' name='name' style='padding: 10px;width: 70%' placeholder='User name' 
				tabindex=1 autofocus='true' required><br><br>
				<input type='text' name='mobile' style='padding: 10px;width: 70%' pattern="\d*" maxlength="10" 
				placeholder='Mobile (10 characers long)' tabindex=4 required><br><br>
				
				<input type='email' name='email' style='padding: 10px;width: 70%' pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" 
				placeholder='Email' tabindex=3 required><br><br>
				
				<input type='submit' style='padding: 10px;width: 40%' tabindex=3>
				
				<input type='hidden' name='status' style='padding: 10px;width: 70%' value="Available" tabindex=4><br><br>
				<input type='hidden' name='requests' style='padding: 10px;width: 70%' value="null" ><br><br>
				<input type='hidden' name='work_status' style='padding: 10px;width: 70%' value="null" ><br><br>
				<input type='hidden' name='request_id' style='padding: 10px;width: 70%' value="0" ><br><br>
			</form>
			
            </div>
        </center>
        
</body>
<jsp:include page="../footer.jsp" />
</html>