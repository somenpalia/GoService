
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delivery boys login</title>
</head>
 <jsp:include page="../header.jsp"></jsp:include> 
<body>
<body>

	

	<!-- Error -->
	<%
		System.out.println("Session employee error login jsp  : " + session);
	String checkLogin = null;
		try{
		 checkLogin = (String) session.getAttribute("checkLogin");
		}catch(Exception e){
			System.out.println("Session invalidated in register section");
		}
		System.out.println("checkLogin : " + checkLogin);
		if (checkLogin != null) {
			if (checkLogin.equals("checkLogin")) {
				try {
					session.invalidate();
					System.out.println("Session invalidated in error section.");

				} catch (Exception e) {
					System.out.println("Session already invalidated.");
				}
	%>
	<center>
		<div
			style="padding: 30px; margin: 5%; width: 50%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
			<hr>
			<h2 style="margin-top: -7px; color: red">
				Invalid email or password!<br>Please try again
			</h2>
			<hr>

		</div>
	</center>

	<%
		}
		}
	%>


	<!-- Login -->
	<center>
		<div
			style="padding: 30px; margin: 5%; width: 35%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
			<h1 style="margin-top: -7px">Login</h1>
			<hr>
			<form action='/GoService/delivery_boys_login' method='post'>
			
				<input type='email' name='email' style='padding: 10px;width: 70%' pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" 
				placeholder='Email' tabindex=1 required><br><br>
				
				<input type='text' name='mobile' style='padding: 10px;width: 70%' pattern="\d*" maxlength="10" 
				placeholder='Mobile (10 characers long)' tabindex=2 required><br><br>
					
					<input type='submit' style='padding: 10px; width: 20%' tabindex=3/>

			</form>
		</div>
		

	</center>





</body>
 <jsp:include page="../footer.jsp" />
</html>