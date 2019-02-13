package rs.dao.impl;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import rs.bo.FetchedReqBo;
import rs.bo.FetchedSCBo;
import rs.bo.SCLogBo;
import rs.bo.ServiceCentreBo;
import rs.bo.ServiceProviderBo;
import rs.dao.ServiceCentreDao;
import rs.util.RSDbUtil;

public class ServiceCentreImp implements ServiceCentreDao{
	@Override
	public int add1(ServiceProviderBo provider){
	  	  String query="Insert into ServiceProvider VALUES(spSeq.nextval,?,?,?)";
    	  int status=0;
    	  Connection con = null;
    	  try{
    		  con=RSDbUtil.getConnection();
        		  PreparedStatement pstmt=con.prepareStatement(query);
        		  pstmt.setString(1,provider.getName());
        		  pstmt.setString(2,provider.getMail());
        		  pstmt.setString(3,provider.getPassword());
        		  status=pstmt.executeUpdate();
    	  } catch(Exception e){
    		  e.printStackTrace();
    	  }finally{
            	RSDbUtil.closeConnection(con);
            }//finally
    	  return status;
	}
	@Override
	public int add2(ServiceCentreBo centre){
	  	  String query="Insert into ServiceCentre VALUES(scSeq.nextval,?,?,?,?,?,?,?)";
    	  int status=0;
    	  Connection con = null;
    	  InputStream is=null;
    	  try{
    		  con=RSDbUtil.getConnection();
    		  is=centre.getDocument();
    		 System.out.println("is == null"+(is==null));
        		  PreparedStatement pstmt=con.prepareStatement(query);
        		  pstmt.setString(1,centre.getName());
        		  pstmt.setString(2,centre.getAddress());
        		  pstmt.setLong(3,centre.getContact());
        	//	  pstmt.setBlob(4,centre.getDocument());
        		  pstmt.setBinaryStream(4,is,is.available());
        		  pstmt.setString(5,centre.getDeviceType());
        		  pstmt.setString(6,centre.getCompanyName());
        		  pstmt.setLong(7,centre.getSP_id());
        		  status=pstmt.executeUpdate();
    	  } catch(Exception e){
    		  e.printStackTrace();
    	  }finally{
            	RSDbUtil.closeConnection(con);
            }//finally
    	  return status;
	}
	@Override
	public boolean validate(SCLogBo provider) {
		String validateQuery="Select * From ServiceProvider where email=? and password=?";
	  	  boolean isValidUser=false;
	  	  Connection con= null;
	  	  try{
	  		  con = RSDbUtil.getConnection();
	      	  PreparedStatement valPstmt=con.prepareStatement(validateQuery);
	      	  valPstmt.setString(1,provider.getMail());
	      	  valPstmt.setString(2,provider.getPassword());
	      	  ResultSet rs=valPstmt.executeQuery();
	      	if(rs.next()){
	      		 isValidUser=true;
	              RSDbUtil.closeConnection(con);
	      		  return isValidUser;
	      	} 
	  	  }catch(Exception e){
	  		  e.printStackTrace();
	  	  }
	  	  return isValidUser;
	}
	
	@Override
	public long getProvidersId(ServiceProviderBo provider){
		String selQuery="Select id from ServiceProvider where email=?";
		long id=0;
		 Connection con= null;
	  	  try{
	  		  con = RSDbUtil.getConnection();
	      	  PreparedStatement pstmt=con.prepareStatement(selQuery);
	      	  pstmt.setString(1,provider.getMail());
	      	  ResultSet rs=pstmt.executeQuery();
	      	if(rs.next()){
	      		 id=rs.getLong("id");
	              RSDbUtil.closeConnection(con);
	      	} 
	  	  }catch(Exception e){
	  		  e.printStackTrace();
	  	  }
	  	  return id;
	}
	
	@Override
	 public ArrayList<FetchedSCBo> fetchSC(String mobile){
	  	   String selQuery="Select * From ServiceCentre where UPPER(company)=?";
    	   Connection con=null;
    	   ResultSet rs=null;
    	   ArrayList<FetchedSCBo> list=new ArrayList();
    	   try{
    		   con=RSDbUtil.getConnection();
    		   PreparedStatement pstmt=con.prepareStatement(selQuery);
    		   pstmt.setString(1,mobile);
    		   rs=pstmt.executeQuery();
    		   while(rs.next()){
    			   FetchedSCBo obj=new FetchedSCBo();
    			   obj.setId(rs.getLong("id"));
    			   obj.setName(rs.getString("name"));
    			   obj.setAddress(rs.getString("address"));
    			   obj.setContact(rs.getLong("contact"));
    			   list.add(obj);
    		   }
    	   }catch(Exception e){
    		   e.printStackTrace();
    	   }finally{
           	RSDbUtil.closeConnection(con);
           }//finally
    	   return list;		 
	 }
}
