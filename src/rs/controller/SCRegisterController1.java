package rs.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.ServiceProviderBo;
import rs.dao.CustomerDao;
import rs.dao.ServiceCentreDao;
import rs.daoFactory.DaoFactory;

public class SCRegisterController1 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	  //Get parameter and set values
  	  ServiceProviderBo provider=new ServiceProviderBo();
  	  String name=request.getParameter("sc_name");
  	  String mail=request.getParameter("sc_email");
  	  String password=request.getParameter("sc_pass");
  	  provider.setName(name);
  	  provider.setMail(mail);
  	  provider.setPassword(password);
  	  
  	  //Session management
  	  HttpSession session=request.getSession();
  	  session.setAttribute("provider",provider);
  	  
  	  //Add user in DB  
  	  ServiceCentreDao dao=DaoFactory.getServiceCentreImp();
  	  int status=dao.add1(provider);
  	  long id=dao.getProvidersId(provider);
  	  
  	  //Checking user added or not
  	  if(status>0){
  		  session.setAttribute("id",id);
  		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/scRegister2.jsp");
  		  rd.forward(request,response);
  	  }else{
  		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/scRegister1Err.jsp");
  		  rd.include(request,response);
  	  }
	}
}
