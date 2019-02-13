package rs.bo;

import java.io.InputStream;
import java.sql.Date;

public class FetchedReqBo {
	private long id;
	private String custName;
	private String address;
	private long contact;
	private InputStream reciept;
	private String problem;
	private Date date;
	private String status;
	public FetchedReqBo(){
		
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public InputStream getReciept() {
		return reciept;
	}
	public void setReciept(InputStream reciept) {
		this.reciept = reciept;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
