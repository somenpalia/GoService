package rs.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.FetchedReqBo;

public class ImageCotroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   HttpSession session=request.getSession();
		   FetchedReqBo obj=(FetchedReqBo)session.getAttribute("obj");
		   session.invalidate();
		   InputStream is=null;
		   try{
			   is=obj.getReciept();
				 if(is!=null){
						byte[] byteArrayData = new byte[1024];
						int size=0;
						while((size=is.read(byteArrayData))!= -1 ){
							
							response.getOutputStream().write(byteArrayData,0,size);
						}	
				 }
		   }catch(Exception e){
			   e.printStackTrace();
		   }finally{
			   if(is!=null)
				   is.close();
		   }
	}//doGet

}//class
