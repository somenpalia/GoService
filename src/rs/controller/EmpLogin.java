package rs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.EmployeeBo;
import rs.bo.UserLogBo;
import rs.dao.CustomerDao;
import rs.dao.EmployeeDao;
import rs.daoFactory.DaoFactory;

/**
 * Servlet implementation class EmpLogin
 */
public class EmpLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// Session management
		HttpSession session = request.getSession(true);

		// session.setAttribute("userLog",user);
		System.out.println("Session employee login servlet : " + session);
		// Validate user in DB
		EmployeeDao empLogin = DaoFactory.getEmployee();
		boolean status = empLogin.login(email, password);

		EmployeeDao empBo = DaoFactory.getEmployee();
		EmployeeBo empData = empBo.data(email);
		
		session.setAttribute("empData", empData);
		session.setAttribute("checkLogin", "checkLogin");
		// Checking user exist or not
		if (status) {
			System.out.println("Logged in");
			
			response.sendRedirect("JSP/emp_home.jsp");
			
		} else {
			System.out.println("Invalid email or password");
			response.sendRedirect("JSP/emp_login.jsp");
		}// else

	}//doPost
}//class
