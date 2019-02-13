package rs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.bo.DeliveryBoysBo;
import rs.dao.DeliveryBoysDao;
import rs.daoFactory.DaoFactory;
import rs.util.SendEmail;

/**
 * Servlet implementation class AddDeliveryBoysController
 */
public class AddDeliveryBoysController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = (String) request.getParameter("name");
		String mobile = (String) request.getParameter("mobile");
		String email = (String) request.getParameter("email");
		String status = (String) request.getParameter("status");
		String requests = (String) request.getParameter("requests");
		String workStatus = (String) request.getParameter("workStatus");
		String requestIdStr = (String) request.getParameter("request_id");
		int requestId = Integer.parseInt(requestIdStr);
		
		DeliveryBoysBo db = new DeliveryBoysBo();
		db.setName(name);
		db.setMobile(mobile);
		db.setEmail(email);
		db.setRequests(requests);
		db.setStatus(status);
		db.setWorkStatus(workStatus);
		db.setRequestId(requestId);
		
		DeliveryBoysDao dbDao = DaoFactory.getDeliveryBoys();
		dbDao.add(db);
		
		String mailText = "Welcome " + name + ", you are successfully registered as a delivery boy for GoService.\nYour username : "+
		email+" and \nYour password : "+mobile;
		SendEmail.send(email, "Welcome to GoService", mailText);
		
		response.sendRedirect("JSP/db_added.jsp");
	
	}

}
