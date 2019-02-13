package rs.bo;

import java.io.InputStream;

public class FetchedSCBo {
	   private long id;
	   private String name;
       private String address;
       private long contact;
       private InputStream document;
       private String deviceType;
       private String companyName;
       public FetchedSCBo(){
    	   
       }
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public InputStream getDocument() {
		return document;
	}
	public void setDocument(InputStream document) {
		this.document = document;
	}
	public String getDeviceType() {
		return deviceType;
	}
	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
}
