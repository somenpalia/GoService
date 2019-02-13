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
 * Servlet implementation class DeliveryBoysChangeController
 */
public class DeliveryBoysChangeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = (String) request.getAttribute("user_email");
		
		System.out.println("Email in db change servlet " + email);
		
		HttpSession session = request.getSession(true);
		
		DeliveryBoysBo dbUser2 = (DeliveryBoysBo) session.getAttribute("dbUser");
		int requestId = dbUser2.getRequestId();
		
	DeliveryBoysDao db = DaoFactory.getDeliveryBoys();
	db.changeRequests(email);
	
	DeliveryBoysBo dbUser = (DeliveryBoysBo) db.getUser(email);
	dbUser.setRequestId(requestId);
	
	session.setAttribute("dbUser" , dbUser);
	
	System.out.println("In change controller dbUser.getRequests() : " + dbUser.getRequests());
	
	response.sendRedirect("delivery_boys_home.jsp");	}

	
}
