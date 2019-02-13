<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Register</title>
</head>
<jsp:include page="../header_emp.jsp" /> 
<body>

<body>
   
  
        <center>
        <div style="padding: 30px; margin: 5%; width: 50%;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    ">
            <h1 style="margin-top: -7px">Register</h1>
            <hr> 
			<form action='/GoService/employee_register' method='post'>
			
				<input type='text' name='user_name' style='padding: 10px;width: 70%' placeholder='User name' 
				tabindex=1 autofocus='true' required><br><br>
				
				<input type='text' name='password' style='padding: 10px;width: 70%' pattern=".{6,}" 
				placeholder='Password (Must be atleast 6 characters long)' tabindex=2 required><br><br>
				
				<input type='email' name='email' style='padding: 10px;width: 70%' pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" 
				placeholder='Email' tabindex=3 required><br><br>
				
				<input type='text' name='mobile' style='padding: 10px;width: 70%' pattern="\d*" maxlength="10" 
				placeholder='Mobile (10 characers long)' tabindex=4 required><br><br>
				
				<input type='text' name='address' style='padding: 10px;width: 70%' placeholder='Address' tabindex=5 required><br><br>
				
				<input type='submit' style='padding: 10px;width: 40%' tabindex=3>
			</form>
			
            </div>
        </center>
        
        
  
   
	
  </body>

</body>
 <jsp:include page="../footer.jsp" /> 
</html>