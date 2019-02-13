package rs.dao;
import java.util.ArrayList;

import rs.bo.EmployeeBo;
import rs.bo.RequestEmpBo;

public interface EmployeeDao {

	public boolean register(EmployeeBo employeeBo);
	public boolean login(String email,String password);
	public EmployeeBo data(String email);
	public ArrayList<RequestEmpBo> getRequestDetails();
	
}
