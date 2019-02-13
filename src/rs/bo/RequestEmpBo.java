package rs.bo;

public class RequestEmpBo {
	
	private int id = 0;
	
	private String serviceCentreName = null;
	private String serviceCentreAddress = null;
	private String serviceCentreContact = null;
	
	private String customerName = null;
	private String contact = null;
	private String address = null;
	private String status = null;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getServiceCentreContact() {
		return serviceCentreContact;
	}
	public void setServiceCentreContact(String serviceCentreContact) {
		this.serviceCentreContact = serviceCentreContact;
	}
	public String getServiceCentreAddress() {
		return serviceCentreAddress;
	}
	public void setServiceCentreAddress(String serviceCentreAddres) {
		this.serviceCentreAddress = serviceCentreAddres;
	}
	public String getServiceCentreName() {
		return serviceCentreName;
	}
	public void setServiceCentreName(String serviceCentreName) {
		this.serviceCentreName = serviceCentreName;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
