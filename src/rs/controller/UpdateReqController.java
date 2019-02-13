package rs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.bo.FetchedReqBo;
import rs.dao.RequestDao;
import rs.daoFactory.DaoFactory;

public class UpdateReqController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("JSP/updRequest.jsp");
        int index=Integer.parseInt(request.getParameter("index"));
        HttpSession session=request.getSession();
        ArrayList<FetchedReqBo> list=(ArrayList<FetchedReqBo>)session.getAttribute("updlist");
        int size=list.size();
        RequestDao dao=DaoFactory.getRequestImp();
        FetchedReqBo req=list.get(index);
        long id=req.getId();
        dao.updRequest(id);
        ArrayList<FetchedReqBo> newList=dao.removeRequest(list, req);
        int newSize=newList.size();
        if(newSize < size){
       	 session.invalidate();
       	 request.setAttribute("check", "check");
       	 request.setAttribute("newlist", newList);
       	 rd.forward(request,response);
        }		
	}

}
