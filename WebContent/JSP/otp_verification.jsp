<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String otpOriginal = request.getParameter("otp_original");
	String otpUser = request.getParameter("otp_user");
	String otpSession = (String)session.getAttribute("otp");
	System.out.println("OTP session = " + otpSession);
	System.out.println("OTP original = " + otpOriginal);
	System.out.println("OTP user = " + otpUser);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OTP Verification</title>
</head>
<jsp:include page="../navbar.html" />


<body>

	<%
		try {
			if (otpUser.equals(otpOriginal)) {
	%>
	<%
		response.sendRedirect("emp_login.jsp");
	%>

	<%
		} else {System.out.println("In else");
	%>
	<script>
		function error() {
			alert("Wrong otp, please try again.");
		}
		error();
	</script>

	<jsp:forward page="otp.jsp">
	<jsp:param value="check" name="check"/>
	</jsp:forward>
	<%
		}
		} catch (Exception e) {System.out.println("In else");
	%>
	<script>
		function error() {
			alert("Wrong otp, please try again.");
		}
		error();
	</script>

	<jsp:forward page="otp.jsp">
	<jsp:param value="check" name="check"/>
	</jsp:forward>

	<%
		}
	%>

</body>
<%-- <jsp:include page="../footer.html" /> --%>
</html>