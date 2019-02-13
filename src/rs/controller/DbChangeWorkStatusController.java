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
 * Servlet implementation class DbChangeWorkStatusController
 */
public class DbChangeWorkStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = (String) request.getAttribute("user_email");
		int requestId = (Integer) request.getAttribute("requestId");
		
		System.out.println("Email in db work change servlet " + email);
		System.out.println("requestId in db work change servlet " + requestId);
		
		HttpSession session = request.getSession(true);
		
		
		
	DeliveryBoysDao db = DaoFactory.getDeliveryBoys();
	db.changeWorkStatus(email,requestId);
	
	DeliveryBoysBo dbUser = (DeliveryBoysBo) db.getUser(email);
	session.setAttribute("dbUser" , dbUser);
	System.out.println("In work change controller dbUser.getWorkStatus() : " + dbUser.getWorkStatus());
	
	
	response.sendRedirect("delivery_boys_home.jsp");
	
	}


}
