package rs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.SCLogBo;
import rs.bo.UserLogBo;
import rs.dao.CustomerDao;
import rs.dao.ServiceCentreDao;
import rs.daoFactory.DaoFactory;

public class SCLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   	  //Get parameter and set values
	   	  SCLogBo provider=new SCLogBo();
	   	  String mail=request.getParameter("u_email");
	   	  String password=request.getParameter("u_pass");
	   	  provider.setMail(mail);
	   	  provider.setPassword(password);
	   	  
	   	  //Session management
	   	  HttpSession session=request.getSession();
	   	  session.setAttribute("providerLog",provider);
	   	  
	   	  //Validate user in DB  
	   	  ServiceCentreDao dao=DaoFactory.getServiceCentreImp();
	   	  boolean status=dao.validate(provider);
	   	  
	   	  //Checking user exist or not
	   	  if(status){
	   		  RequestDispatcher rd=request.getRequestDispatcher("JSP/scHome.jsp");
	   		  rd.forward(request,response);
	   		  }else{
	   		  RequestDispatcher rd=request.getRequestDispatcher("JSP/scLoginErr.jsp");
	   		  rd.include(request,response);
	   	  }		
	}

}
