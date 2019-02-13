package rs.dao;
import java.util.ArrayList;
import rs.bo.FetchedSCBo;
import rs.bo.SCLogBo;
import rs.bo.ServiceCentreBo;
import rs.bo.ServiceProviderBo;

public interface ServiceCentreDao {
	public int add1(ServiceProviderBo provider);
	public int add2(ServiceCentreBo centre);
	public boolean validate(SCLogBo provider);
	 public ArrayList<FetchedSCBo> fetchSC(String mobile);
	 public long getProvidersId(ServiceProviderBo provider);
	//public int remove(UserBo user);
	//public int update(UserBo user);
}
