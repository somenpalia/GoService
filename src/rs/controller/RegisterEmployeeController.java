package rs.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.EmployeeBo;
import rs.dao.EmployeeDao;
import rs.daoFactory.DaoFactory;
import rs.util.SendEmail;

public class RegisterEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		System.out.println("Session in controller : " + session);
		String name = request.getParameter("user_name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String mobileStr = request.getParameter("mobile");
		//int mobile = Integer.parseInt(mobileStr);
		String address = request.getParameter("address");
		
		EmployeeBo employeeBo = new EmployeeBo();
		employeeBo.setName(name);
		employeeBo.setPassword(password);
		employeeBo.setEmail(email);
		employeeBo.setMobile(mobileStr);
		employeeBo.setAddress(address);
		EmployeeDao employeeAdd = DaoFactory.getEmployee(); 
		boolean check = employeeAdd.register(employeeBo);
		if(check){
			System.out.println("Registerd");
		}else{
			System.out.println("Error");
		}
		
		Random rand = new Random();
		int otp = (rand.nextInt(9000))+1000;
		String otpStr = Integer.toString(otp);
		String text = name + ", your 4 digit verification code is " + otpStr;
		SendEmail.send(email, "OTP", text);
		
/*		response.sendRedirect("JSP/EmpSuccessRegistered.jsp");*/
		session.setAttribute("otp", otpStr);
		session.setAttribute("session", session);
		response.sendRedirect("JSP/otp.jsp");
		/*request.setAttribute("otp ", text);
		RequestDispatcher rd = request.getRequestDispatcher("JSP/otp.jsp");
		rd.forward(request, response);*/
	}//doPost

}
