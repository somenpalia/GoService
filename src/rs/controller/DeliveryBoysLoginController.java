package rs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.DeliveryBoysBo;
import rs.dao.DeliveryBoysDao;
import rs.daoFactory.DaoFactory;

/**
 * Servlet implementation class DeliveryBoysLoginController
 */
public class DeliveryBoysLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = (String) request.getParameter("email");
		String mobile = (String) request.getParameter("mobile");
		
		System.out.println("Email in db login servlet " + email);
		System.out.println("Mobile in db login servlet " + mobile);
		
		HttpSession session = request.getSession(true);
		
	DeliveryBoysDao db = DaoFactory.getDeliveryBoys();
	DeliveryBoysBo dbUser = db.login(email,mobile);
	
	System.out.println("dbUser.name : " + dbUser.getName());
	
	session.setAttribute("dbUser" , dbUser);
	response.sendRedirect("JSP/delivery_boys_home.jsp");
	
	}


}
