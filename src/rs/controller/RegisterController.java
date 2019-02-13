package rs.controller;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import rs.bo.UserBo;
import rs.dao.CustomerDao;
import rs.daoFactory.DaoFactory;


public class RegisterController  extends HttpServlet{
      @Override
      protected void doPost(HttpServletRequest request,HttpServletResponse response)
      throws ServletException,IOException{
    	  //Get parameter and set values
    	  UserBo user=new UserBo();
    	  String name=request.getParameter("u_name");
    	  String mobile=request.getParameter("u_mobile");
    	  long mobileNo=Long.parseLong(mobile);
    	  String mail=request.getParameter("u_email");
    	  String password=request.getParameter("u_pass");
    	  user.setName(name);
    	  user.setMobileNo(mobileNo);
    	  user.setMail(mail);
    	  user.setPassword(password);
    	  
    	  //Session management
    	  HttpSession session=request.getSession();
    	  session.setAttribute("user",user);
    	  
    	  //Add user in DB  
    	  CustomerDao impl=DaoFactory.getCustomerImp();
    	  int status=impl.add(user);
    	  
    	  //Checking user added or not
    	  if(status>0){
    		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/userHome.jsp");
    		  rd.forward(request,response);
    	  }else{
    		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/registerErr.jsp");
    		  rd.include(request,response);
    	  }
      }

	
}//class
