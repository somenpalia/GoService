package rs.daoFactory;
import rs.dao.DeliveryBoysDao;
import rs.dao.EmployeeDao;
import rs.dao.impl.DeliveryBoysImpl;
import rs.dao.impl.EmployeeImpl;
import rs.dao.impl.CustomerImp;
import rs.dao.impl.RequestImp;
import rs.dao.impl.ServiceCentreImp;


public class DaoFactory {
	private static CustomerImp imp=null;
	private static CustomerImp c_imp=null;
	private static ServiceCentreImp sc_imp=null;
	private static RequestImp req_imp=null;
	
	//Ravi
	public static CustomerImp getCustomerImp() {
		if(imp==null)
			imp=new CustomerImp();
		return imp;
	}
	
	public static ServiceCentreImp getServiceCentreImp() {
		if(sc_imp==null)
			sc_imp=new ServiceCentreImp();
		return sc_imp;
	}
	
	public static RequestImp getRequestImp() {
		if(req_imp==null)
			req_imp=new RequestImp();
		return req_imp;
	}

	//somen
	private static EmployeeImpl employeeAddImpl = null;
	
	public static EmployeeDao getEmployee() {
		if(employeeAddImpl == null){
			employeeAddImpl = new EmployeeImpl();
			return employeeAddImpl;
		}
		return employeeAddImpl;
	}
	
	private static DeliveryBoysImpl dbImpl = null;
	
	public static DeliveryBoysDao getDeliveryBoys(){
		
	if(dbImpl == null){
		dbImpl = new DeliveryBoysImpl();
		return dbImpl;
	}//
	return dbImpl;
	}//dbDao
	
}
