package rs.dao;
import rs.bo.UserBo;
import rs.bo.UserLogBo;

public interface CustomerDao {
	public int add(UserBo user);
	public boolean validate(UserLogBo user);
	//public int remove(UserBo user);
	//public int update(UserBo user);
	//public List searchSC();  SC-Service Centres  random search
	//public SC search(SC name); search by SC name
}
