package rs.bo;
import java.io.InputStream;
import java.io.Serializable;

public class ServiceCentreBo implements Serializable{
	   private String name;
       private String address;
       private long contact;
       private InputStream document;
       private String deviceType;
       private String companyName;
       private long sp_id;
       public ServiceCentreBo(){
    	   
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
	public long getSP_id() {
		return sp_id;
	}
	public void setSP_id(long sp_id) {
		this.sp_id = sp_id;
	}
}
