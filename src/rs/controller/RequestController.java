package rs.controller;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import rs.bo.RequestBo;
import rs.dao.RequestDao;
import rs.daoFactory.DaoFactory;

public class RequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream is=null; 
		
		//Get parameter and set values
		  RequestBo req=new RequestBo();
	  	  String strId=request.getParameter("id");
	  	  long id=Long.parseLong(strId);
	  	  Date date=new Date(System.currentTimeMillis());
	  	  
			String c_name="";
			String deliv_addr="";
			String c_contact="";
			String prob="";
	  	  
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			
			if(isMultipart){
				
				// Create a factory for disk-based file items
				FileItemFactory factory = new DiskFileItemFactory();

				// Create a new file upload handler
				ServletFileUpload upload = new ServletFileUpload(factory);
				
				
				try {
					// Parse the request
					List<FileItem> allMultipartsData = upload.parseRequest(request);
					List<FileItem> allFileItemsList = new ArrayList<FileItem>();						
					List<FileItem> allNonFileData = new ArrayList<FileItem>();
					
					for (FileItem item : allMultipartsData) {
						if (item.isFormField()) {
							allNonFileData.add(item);
						}else if (!item.isFormField()) {
							allFileItemsList.add(item);
						}
					}
					
					
					for (FileItem paramItem : allNonFileData) {
						//extract data
						if("c_name".equalsIgnoreCase(paramItem.getFieldName())){
							c_name = paramItem.getString();
							req.setCustName(c_name);
						}else if("deliv_addr".equalsIgnoreCase(paramItem.getFieldName())){
							deliv_addr = paramItem.getString();
							req.setAddress(deliv_addr);
						}else if("c_contact".equalsIgnoreCase(paramItem.getFieldName())){
							c_contact = paramItem.getString();
							long contact=Long.parseLong(c_contact);
							req.setContact(contact);
						}else if("prob".equalsIgnoreCase(paramItem.getFieldName())){
							prob=  paramItem.getString();
							req.setProblem(prob);
						}
					}
					
					for (FileItem fileItem : allFileItemsList) {
							if("doc".equalsIgnoreCase(fileItem.getFieldName())){
								req.setReciept(fileItem.getInputStream());
								}
						}					
					
				}catch(Exception e){
					e.printStackTrace();	
				}
					
				req.setId(id);
				req.setDate(date);
					
	  	  
	  	  //Session management
	  	  HttpSession session=request.getSession();
	  	  session.setAttribute("placedReq",req);
	  	  
	  	  //Add request in DB  
	  	  RequestDao dao=DaoFactory.getRequestImp();
	  	  int status=dao.addReq(req);
	  	  
	  	  //Checking request added or not
	  	  if(status>0){
	  		  RequestDispatcher rd=request.getRequestDispatcher("JSP/requestConfirmation.jsp");
	  		  rd.forward(request,response);
	  	  }else{
	  		  RequestDispatcher rd=request.getRequestDispatcher("JSP/placeRequest.jsp");
	  		  rd.include(request,response);
	  	  }		
			}
	}//doPost
}//class
