package rs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.bo.DeliveryBoysBo;
import rs.dao.DeliveryBoysDao;
import rs.daoFactory.DaoFactory;

/**
 * Servlet implementation class DeliveryBoysUser
 */
public class DeliveryBoysUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nameC = (String)request.getAttribute("nameCustomer");
		String mobileC = (String)request.getAttribute("mobileCustomer");
		
		String email = (String)request.getAttribute("email");
		
		int id  = (Integer) request.getAttribute("id");
		
		
		System.out.println("In delivery boys user controller Id is : " + id);
		
		DeliveryBoysDao db = DaoFactory.getDeliveryBoys();
		DeliveryBoysBo dbData = db.getUser(email);
		
		db.changeStatus(email,id);
		
		response.sendRedirect("emp_home.jsp");
	
	}


}
