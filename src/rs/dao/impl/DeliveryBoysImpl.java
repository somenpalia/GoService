package rs.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import rs.bo.DeliveryBoysBo;
import rs.bo.RequestEmpBo;
import rs.dao.DeliveryBoysDao;
import rs.util.RSDbUtil;

public class DeliveryBoysImpl implements DeliveryBoysDao {

	@Override
	public ArrayList<DeliveryBoysBo> getDetails() {
		System.out.println("In get details");
		ArrayList<DeliveryBoysBo> dbData = new ArrayList<>();
	try{
		Connection con = RSDbUtil.getConnection();
		String sql = "select * from delivery_boys";
		Statement stmt = con.createStatement();				
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			DeliveryBoysBo data = new DeliveryBoysBo();
			data.setId(rs.getInt(1));
			data.setName(rs.getString("name"));
			data.setMobile(rs.getString("mobile"));
			data.setEmail(rs.getString("email"));
			data.setStatus(rs.getString("status"));
			data.setRequests(rs.getString("requests"));
			data.setWorkStatus(rs.getString("work_status"));
			dbData.add(data);
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
	
	return dbData;
	
	}

	@Override
	public DeliveryBoysBo getUser(String email) {
		System.out.println("In getUser()");
		DeliveryBoysBo data = new DeliveryBoysBo();
	try{
		Connection con = RSDbUtil.getConnection();
		String sql = "select * from delivery_boys where email='"+email+"'";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			data.setId(rs.getInt(1));
			data.setName(rs.getString("name"));
			data.setMobile(rs.getString("mobile"));
			data.setEmail(rs.getString("email"));
			data.setStatus(rs.getString("status"));
			data.setRequests(rs.getString("requests"));
			data.setWorkStatus(rs.getString("work_status"));
			
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
	
	return data;
	}

	@Override
	public void changeStatus(String email,int id) {
		System.out.println(email);
		try{
			Connection con = RSDbUtil.getConnection();
			String sql1 = "update delivery_boys set requests='Pending' where email='"+email+"'";
			String sql2 = "update delivery_boys set status='Not available' where email='"+email+"'";
			String sql3 = "update request set emp_status='Working fetch' where id="+id+"";
			String sql4 = "update delivery_boys set requestid="+id+" where email='"+email+"'";
			
			Statement stmt = con.createStatement();				
			
			int result1 = stmt.executeUpdate(sql1);
			int result2 = stmt.executeUpdate(sql2);
			int result3 = stmt.executeUpdate(sql3);
			int result4 = stmt.executeUpdate(sql4);
			
			System.out.println("Rows modified1 : " + result1);
			System.out.println("Rows modified2 : " + result2);
			System.out.println("Rows modified, for change in Request status : " + result3);
			System.out.println("Rows modified, for change in Requestid  : " + result4);
			
			}catch(SQLException e){
				e.printStackTrace();
			}
		
	}

	@Override
	public DeliveryBoysBo login(String email, String mobile) {
		System.out.println("In login()");
		DeliveryBoysBo data = new DeliveryBoysBo();
	try{
		Connection con = RSDbUtil.getConnection();
		System.out.println(email + " "  + mobile);
		String sql = "select * from delivery_boys where email='"+email+"' and mobile='"+ mobile+"'";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			data.setId(rs.getInt(1));
			data.setName(rs.getString("name"));
			data.setMobile(rs.getString("mobile"));
			data.setEmail(rs.getString("email"));
			data.setStatus(rs.getString("status"));
			data.setRequests(rs.getString("requests"));
			data.setWorkStatus(rs.getString("work_status"));
			data.setRequestId(rs.getInt("requestid"));
			
			System.out.println("data.getRequestId() : " + data.getRequestId());
			
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
	
	return data;
	}

	@Override
	public void changeRequests(String email) {
		System.out.println(email);
		try{
			Connection con = RSDbUtil.getConnection();
			String sql1 = "update delivery_boys set requests='Approved' where email='"+email+"'";
			String sql2 = "update delivery_boys set status='Not available' where email='"+email+"'";
			String sql3 = "update delivery_boys set work_status='No' where email='"+email+"'";
			
			
			Statement stmt = con.createStatement();				
			int result1 = stmt.executeUpdate(sql1);
			int result2 = stmt.executeUpdate(sql2);
			int result3 = stmt.executeUpdate(sql3);
			System.out.println("Rows modified1 : " + result1);
			System.out.println("Rows modified2 : " + result2);
			System.out.println("Rows modified3 : " + result3);
			
			}catch(SQLException e){
				e.printStackTrace();
			}
	}

	@Override
	public void changeWorkStatus(String email, int requestId) {
		System.out.println(email);
		try{
			Connection con = RSDbUtil.getConnection();
			String sql1 = "update delivery_boys set work_status='Yes' where email='"+email+"'";
			String sql2 = "update delivery_boys set requests='null' where email='"+email+"'";
			String sql3 = "update delivery_boys set status='Available' where email='"+email+"'";
			String sql4 = "update request set emp_status='Fetched' where id="+requestId;
			
			
			Statement stmt = con.createStatement();				
			int result1 = stmt.executeUpdate(sql1);
			int result2 = stmt.executeUpdate(sql2);
			int result3 = stmt.executeUpdate(sql3);
			int result4 = stmt.executeUpdate(sql4);
			
			System.out.println("Rows modified1 : " + result1);
			System.out.println("Rows modified2 : " + result2);
			System.out.println("Rows modified3 : " + result3);
			System.out.println("Rows modified4 : " + result4);
			
			}catch(SQLException e){
				e.printStackTrace();
			}
		
	}

	@Override
	public void add(DeliveryBoysBo db) {
		int result = 0;
		try{
			Connection con = RSDbUtil.getConnection();
			String sql = "insert into delivery_boys values(sequence_employee.nextval,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,db.getRequestId());
			pstmt.setString(2, db.getName());
			pstmt.setString(3, db.getMobile());
			pstmt.setString(4, db.getEmail());
			pstmt.setString(5, db.getStatus());
			pstmt.setString(6, db.getRequests());
			pstmt.setString(7, db.getWorkStatus());
			
			
			result = pstmt.executeUpdate();
			
			
			System.out.println(result + " rows affected");
			
			
			}catch(SQLException e){
				e.printStackTrace();
			}
		if(result!=0){
			System.out.println("Added");
		}else{
			System.out.println("Delivery boy ko add karne m koi dikkat aa gyi.");
		}
		
	}

	@Override
	public RequestEmpBo giveRequest(int id) {
		System.out.println("In giveRequest(int), requestId : " + id);
		ArrayList<RequestEmpBo> list = new ArrayList<>();
		
		RequestEmpBo requestData = null;
		String serviceCentreName = null;
		String serviceCentreAddress = null;
		String serviceCentreContact = null;
		String sql2 = null;
		Statement stmt2 = null;
		ResultSet rs2 = null;
		try{
			Connection con = RSDbUtil.getConnection();
			String sql = "select * from request where id="+id;
            Statement stmt = con.createStatement();				
			
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				
				System.out.println("Inside if, means rs.next() is there");
				requestData = new RequestEmpBo();

				//				To get name as it is referenced by foreign key
				sql2 = "select name,address,contact from servicecentre where id="+(rs.getInt("sc_id"));
				stmt2 = con.createStatement();
				rs2 = stmt2.executeQuery(sql2);
				
				if(rs2.next()){
					
					serviceCentreName = rs2.getString("name");
					serviceCentreAddress = rs2.getString("address");
					serviceCentreContact = rs2.getString("contact");
					
					
				}
				
				requestData.setId(rs.getInt("id"));
				
				requestData.setServiceCentreName(serviceCentreName);
				requestData.setServiceCentreAddress(serviceCentreAddress);
				requestData.setServiceCentreContact(serviceCentreContact);
				
				requestData.setCustomerName(rs.getString("customer_name"));
				requestData.setContact(rs.getString("contact"));
				requestData.setAddress(rs.getString("delivery_address"));
				requestData.setStatus(rs.getString("emp_status"));
				
				System.out.println(requestData.getId());
				System.out.println(requestData.getServiceCentreName());
				System.out.println(requestData.getServiceCentreAddress());
				System.out.println(requestData.getCustomerName());
				
				
			}
			
			
			}catch(SQLException e){
				e.printStackTrace();
	
	
         	}
		return requestData;		
		
	}

}
