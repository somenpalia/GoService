package rs.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import rs.bo.UserLogBo;
import rs.dao.CustomerDao;
import rs.dao.impl.CustomerImp;
import rs.daoFactory.DaoFactory;

public class LoginController extends HttpServlet{
	 @Override
     protected void doPost(HttpServletRequest request,HttpServletResponse response)
     throws ServletException,IOException{
   	  //Get parameter and set values
   	  UserLogBo user=new UserLogBo();
   	  String mail=request.getParameter("u_email");
   	  String password=request.getParameter("u_pass");
   	  user.setMail(mail);
   	  user.setPassword(password);
   	  
   	  //Session management
   	  HttpSession session=request.getSession();
   	  session.setAttribute("userLog",user);
   	  
   	  //Validate user in DB  
   	  CustomerDao impl=DaoFactory.getCustomerImp();
   	  boolean status=impl.validate(user);
   	  
   	  //Checking user exist or not
   	  if(status){
   		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/userHome.jsp");
   		  rd.forward(request,response);
   	  }else{
   		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/loginErr.jsp");
   		  rd.include(request,response);
   	  }
     }

}
