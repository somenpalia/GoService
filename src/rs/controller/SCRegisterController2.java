package rs.controller;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



import rs.bo.ServiceCentreBo;
import rs.dao.ServiceCentreDao;
import rs.daoFactory.DaoFactory;

public class SCRegisterController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream is=null; 
		
	  	  HttpSession session=request.getSession();
	  	  long sp_id=(long)session.getAttribute("id");
	  	  ServiceCentreBo centre=new ServiceCentreBo();
			String sc_name="";
			String sc_addr="";
			String sc_contact="";
			String device="";
			String company="";
	  	  
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
						if("sc_name".equalsIgnoreCase(paramItem.getFieldName())){
							sc_name = paramItem.getString();
							centre.setName(sc_name);
						}else if("sc_addr".equalsIgnoreCase(paramItem.getFieldName())){
							sc_addr = paramItem.getString();
							centre.setAddress(sc_addr);
						}else if("sc_contact".equalsIgnoreCase(paramItem.getFieldName())){
							sc_contact = paramItem.getString();
							long contact=Long.parseLong(sc_contact);
							centre.setContact(contact);
						}else if("device".equalsIgnoreCase(paramItem.getFieldName())){
							device=  paramItem.getString();
							centre.setDeviceType(device);
						}else if("company".equalsIgnoreCase(paramItem.getFieldName())){
							company=  paramItem.getString();
							centre.setCompanyName(company);
						}
					}
					
					for (FileItem fileItem : allFileItemsList) {
							if("sc_doc".equalsIgnoreCase(fileItem.getFieldName())){
								centre.setDocument(fileItem.getInputStream());
								}
						}					
					
				}catch(Exception e){
					e.printStackTrace();	
				}
					
				centre.setSP_id(sp_id);
					

	  	  //Session management
	  	  session.setAttribute("centre",centre);
	  	  
	  	  //Add user in DB  
	  	  ServiceCentreDao impl=DaoFactory.getServiceCentreImp();
	  	  int status=impl.add2(centre);
	  	  
	  	  //Checking user added or not
	  	  if(status>0){
	  		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/scHome.jsp");
	  		  rd.forward(request,response);
	  	  }else{
	  		  RequestDispatcher rd=request.getRequestDispatcher("/JSP/scRegister2Err.jsp");
	  		  rd.include(request,response);
	  	  }		
			}
	}
	}//class
