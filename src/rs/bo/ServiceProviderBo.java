package rs.bo;
import java.io.Serializable;

public class ServiceProviderBo implements Serializable{
	private String name;
	private String mail;
	private String password;
	public ServiceProviderBo(){
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}//class
