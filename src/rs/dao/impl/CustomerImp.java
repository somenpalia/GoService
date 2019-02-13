package rs.dao.impl;
import java.sql.*;

import rs.bo.UserBo;
import rs.bo.UserLogBo;
import rs.dao.*;
import rs.util.RSDbUtil;
public class CustomerImp implements  CustomerDao{

	@Override
	public int add(UserBo user) {
	  	  String query="Insert into UserTable VALUES(userSeq.nextval,?,?,?,?)";
    	  int status=0;
    	  Connection con = null;
    	  try{
    		  con=RSDbUtil.getConnection();
        		  PreparedStatement pstmt=con.prepareStatement(query);
        		  pstmt.setString(1,user.getName());
        		  pstmt.setLong(2,user.getMobileNo());
        		  pstmt.setString(3,user.getMail());
        		  pstmt.setString(4,user.getPassword());
        		  status=pstmt.executeUpdate();
    	  } catch(Exception e){
    		  e.printStackTrace();
    	  }finally{
            	RSDbUtil.closeConnection(con);
            }//finally
    	  return status;
	}

	@Override
	public boolean validate(UserLogBo user) {
		String validateQuery="Select * From UserTable where email=? and password=?";
	  	  boolean isValidUser=false;
	  	  Connection con= null;
	  	  try{
	  		  con = RSDbUtil.getConnection();
	      	  PreparedStatement valPstmt=con.prepareStatement(validateQuery);
	      	  valPstmt.setString(1,user.getMail());
	      	  valPstmt.setString(2,user.getPassword());
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
	}//validate

}//class
