package rs.bo;
import java.io.Serializable;

public class SCLogBo  implements Serializable{
	private String mail;
	private String password;
	public SCLogBo(){
		
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
}
