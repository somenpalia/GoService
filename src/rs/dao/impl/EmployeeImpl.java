package rs.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import rs.bo.EmployeeBo;
import rs.bo.RequestEmpBo;
import rs.dao.EmployeeDao;
import rs.util.RSDbUtil;

public class EmployeeImpl implements EmployeeDao{

	@Override
	public boolean register(EmployeeBo employeeBo) {
		int result = 0;
		try{
			Connection con = RSDbUtil.getConnection();
			String sql = "insert into go_service_employee values(sequence_employee.nextval, ?, ?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, employeeBo.getName());
			pstmt.setString(2, employeeBo.getEmail());
			pstmt.setString(3, employeeBo.getPassword());
			pstmt.setString(4, employeeBo.getMobile());
			pstmt.setString(5, employeeBo.getAddress());
			
			
			result = pstmt.executeUpdate();
			
			
			System.out.println(result + " rows affected");
			
			
			}catch(SQLException e){
				e.printStackTrace();
			}
		if(result!=0){
			return true;
		}
		return false;
	}

	@Override
	public boolean login(String email, String password) {
		
			boolean check = false;
			try{
				Connection con = RSDbUtil.getConnection();
				String sql = "select * from go_service_employee where email ='"+email+"' and password='"+password+"'";
                Statement stmt = con.createStatement();				
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next()){
					System.out.println("User logged in");
					check = true;
					return check;
					
				}else{
					System.out.println("Invalid user!");
				}
				
				
				}catch(SQLException e){
					e.printStackTrace();
		
		
             	}
			return false;
	}

	@Override
	public EmployeeBo data(String email) {
		EmployeeBo empData = new EmployeeBo();
		try{
			Connection con = RSDbUtil.getConnection();
			String sql = "select * from go_service_employee where email ='"+email+"'";
            Statement stmt = con.createStatement();				
			
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				empData.setEmail(email);
				empData.setName(rs.getString("name"));
				empData.setAddress(rs.getString("address"));
				empData.setMobile(rs.getString("mobile"));
				empData.setPassword(rs.getString("password"));
				
			}else{
				System.out.println("Invalid user!");
			}
			
			
			}catch(SQLException e){
				e.printStackTrace();
	
	
         	}
		return empData;
	}

	
//	To get details of all requests
	@Override
	public ArrayList<RequestEmpBo> getRequestDetails() {
		
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
			String sql = "select * from request";
            Statement stmt = con.createStatement();				
			
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
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
				
				list.add(requestData);
				
			}
			
			
			}catch(SQLException e){
				e.printStackTrace();
	
	
         	}
		return list;
	}
}


