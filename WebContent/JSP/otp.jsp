<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String otp = (String) session.getAttribute("otp");
   String check = null;
   check = (String)request.getParameter("check");
   System.out.println("check " + check);%>
  <%if(check!=null){%>
	  <script>
		function error() {
			alert("Wrong otp, please try again.");
		}
		error();
	</script>
  <% } %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OTP</title>
</head>
<jsp:include page="../navbar.html" /> 


<body>
   <%System.out.println("OTP is " + otp); %>
  
        <center>
        <div style="padding: 30px; margin: 5%; width: 50%;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    ">
            <h3 style="margin-top: -7px;color:green">Open your email and enter 4 digit code here</h3>
            <hr>
            <form action='otp_verification.jsp'>
            
            <input type='text' name='otp_user' style='padding: 10px;width: 70%' placeholder='Enter otp here' 
            pattern="\d*" maxlength="4" tabindex=2 required><br><br>
			<input type='hidden' name="otp_original" value=<%=otp %>>
			<input type='submit' style='padding: 10px;width: 40%' tabindex=3>
            </form>
			
            </div>
        </center>
        

</body>

<%-- <jsp:include page="../footer.html" /> --%>
</html>