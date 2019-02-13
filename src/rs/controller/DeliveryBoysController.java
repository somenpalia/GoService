package rs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.DeliveryBoysBo;
import rs.dao.DeliveryBoysDao;
import rs.daoFactory.DaoFactory;

/**
 * Servlet implementation class EmpLogoutController
 */

public class DeliveryBoysController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public DeliveryBoysController() {
	super();
	}
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		DeliveryBoysDao db = DaoFactory.getDeliveryBoys();
		ArrayList<DeliveryBoysBo> dbData = db.getDetails();
		
		request.setAttribute("dbData",dbData);
		RequestDispatcher rd = request.getRequestDispatcher("JSP/delivery_boys.jsp");
		rd.forward(request, response);
		
	}


}
