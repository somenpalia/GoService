package rs.dao;

import java.util.ArrayList;

import rs.bo.DeliveryBoysBo;
import rs.bo.RequestEmpBo;

public interface DeliveryBoysDao {

	public ArrayList<DeliveryBoysBo> getDetails();

	public DeliveryBoysBo getUser(String email);

	public void changeStatus(String email,int id);

	public DeliveryBoysBo login(String email, String mobile);

	public void changeRequests(String email);

	public void changeWorkStatus(String email, int requestId);

	public void add(DeliveryBoysBo db);
	
	public RequestEmpBo giveRequest(int id);
}
