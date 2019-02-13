package rs.dao.impl;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import rs.bo.FetchedReqBo;
import rs.bo.RequestBo;
import rs.dao.RequestDao;
import rs.util.RSDbUtil;

public class RequestImp implements RequestDao{
       @Override
       public int addReq(RequestBo req){
 	  	  String updQuery="Insert into Request VALUES(reqSeq.nextval,?,?,?,?,?,?,?,?,?)";
    	  int status=0;
    	  Connection con = null;
    	  InputStream is=null;
    	  try{
    		  is=req.getReciept();
    		  con=RSDbUtil.getConnection();
        		  PreparedStatement pstmt=con.prepareStatement(updQuery);
        		  pstmt.setString(1,req.getCustName());
        		  pstmt.setString(2,req.getAddress());
        		  pstmt.setLong(3,req.getContact());
        		//  pstmt.setBlob(4,req.getReciept());
        		  pstmt.setBinaryStream(4,is,is.available());
        		  pstmt.setString(5,req.getProblem());
        		  pstmt.setLong(6,req.getId());
        		  pstmt.setDate(7,req.getDate());
        		  pstmt.setString(8,"pending");
        		  pstmt.setString(9,"pending_fetch");
        		  status=pstmt.executeUpdate();
    	  } catch(Exception e){
    		  e.printStackTrace();
    	  }finally{
            	RSDbUtil.closeConnection(con);
            }//finally
    	  return status;   	   
       }
       
       @Override
       public long getSCId(String email){
    	   String query="Select id from ServiceCentre where sp_id=(Select id from ServiceProvider where email=?)";
    	   Connection con=null;
    	   ResultSet rs=null;
    	   long id=0;
    	   try{
    		   con=RSDbUtil.getConnection();
    		   PreparedStatement pstmt=con.prepareStatement(query);
    		   pstmt.setString(1,email);
    		   rs=pstmt.executeQuery();
               if(rs.next())
            	   id=rs.getLong("id");
    	   }catch(Exception e){
    		   e.printStackTrace();
    	   }finally{
           	RSDbUtil.closeConnection(con);
           }//finally  
    	   return id;
       }
       
       @Override
       public ArrayList<FetchedReqBo> fetchReq(long id){
    	   String selQuery="Select * From Request where status=? and sc_id=?";
    	   Connection con=null;
    	   ResultSet rs=null;
    	   ArrayList<FetchedReqBo> list=new ArrayList();
    	   try{
    		   con=RSDbUtil.getConnection();
    		   PreparedStatement pstmt=con.prepareStatement(selQuery);
    		   pstmt.setString(1,"pending");
    		   pstmt.setLong(2,id);
    		   rs=pstmt.executeQuery();
    		   while(rs.next()){
    			   FetchedReqBo obj=new FetchedReqBo();
    			   obj.setId(rs.getLong("id"));
    			   obj.setCustName(rs.getString("customer_name"));
    			   obj.setAddress(rs.getString("delivery_address"));
    			   obj.setContact(rs.getLong("contact"));
    			   obj.setReciept(rs.getBinaryStream("doc"));
    			   obj.setProblem("problem");
    			   obj.setDate(rs.getDate("req_date"));
    			   obj.setStatus(rs.getString("status"));
    			   list.add(obj);
    		   }
    	   }catch(Exception e){
    		   e.printStackTrace();
    	   }finally{
           	RSDbUtil.closeConnection(con);
           }//finally
    	   return list;
       }
       
       @Override
       public ArrayList<FetchedReqBo> fetchUpdReq(long id){
    	   String selQuery="Select * From Request where status=? and sc_id=?";
    	   Connection con=null;
    	   ResultSet rs=null;
    	   ArrayList<FetchedReqBo> list=new ArrayList();
    	   try{
    		   con=RSDbUtil.getConnection();
    		   PreparedStatement pstmt=con.prepareStatement(selQuery);
    		   pstmt.setString(1,"working");
    		   pstmt.setLong(2,id);
    		   rs=pstmt.executeQuery();
    		   while(rs.next()){
    			   FetchedReqBo obj=new FetchedReqBo();
    			   obj.setId(rs.getLong("id"));
    			   obj.setCustName(rs.getString("customer_name"));
    			   obj.setAddress(rs.getString("delivery_address"));
    			   obj.setContact(rs.getLong("contact"));
    			   obj.setReciept(rs.getBinaryStream("doc"));
    			   obj.setProblem("problem");
    			   obj.setDate(rs.getDate("req_date"));
    			   obj.setStatus(rs.getString("status"));
    			   list.add(obj);
    		   }
    	   }catch(Exception e){
    		   e.printStackTrace();
    	   }finally{
           	RSDbUtil.closeConnection(con);
           }//finally
    	   return list;   	   
       }
       
       @Override
       public ArrayList<FetchedReqBo> removeRequest(ArrayList<FetchedReqBo> list,FetchedReqBo req){
    	   boolean status=list.remove(req);
    	   System.out.println("Removed or not="+status);
    	    return list;
       }
       
       @Override
       public void updRequest(long id){
    	   String updQuery="Update Request set status=? where id=?";
    	   Connection con=null;
    	   try{
    		   con=RSDbUtil.getConnection();
    		   PreparedStatement pstmt=con.prepareStatement(updQuery);
    		   pstmt.setString(1,"completed");
    		   pstmt.setLong(2,id);
    		   int count=pstmt.executeUpdate();
    		   System.out.println("Count="+count);
               if(count>0)
            	   System.out.println("Successfully updated");
    	   }catch(Exception e){
    		   e.printStackTrace();
    	   }finally{
           	RSDbUtil.closeConnection(con);
           }//finally      	   
       }
       
       @Override
       public void aprooveReq(long id){
    	   String selQuery="Select emp_status from Request where id=?";
    	   String updQuery="Update Request set status=? where id=?";
    	   Connection con=null;
    	   ResultSet rs=null;
    	   String emp_status=null;
    	   try{
    		   con=RSDbUtil.getConnection();
    		   PreparedStatement pstmt1=con.prepareStatement(selQuery);
    		   pstmt1.setLong(1,id);
    		   rs=pstmt1.executeQuery();
    		   if(rs.next())
    			   emp_status=rs.getString("emp_status");
    		   PreparedStatement pstmt2=con.prepareStatement(updQuery);
    		   if(emp_status.equals("fetched"))
    			   pstmt2.setString(1,"working");
    		   else
    			   pstmt2.setString(1,"pending");
    		   pstmt2.setLong(2,id);
    		   int count=pstmt2.executeUpdate();
               if(count>0)
            	   System.out.println("Successfully updated");
    	   }catch(Exception e){
    		   e.printStackTrace();
    	   }finally{
           	RSDbUtil.closeConnection(con);
           }//finally    	   
       }
}
