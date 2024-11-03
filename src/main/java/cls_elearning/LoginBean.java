package cls_elearning;

public class LoginBean {
	private String username;
	private String userid;
	private String passwd;
	private String tel;
	private String sex;
	
	final String _userid="jsp";
	final String _passwd="1234";
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getpasswd() {
		return passwd;
	}
	public void setpasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public boolean checkUser() {
		if(userid.equals(_userid) && passwd.equals(_passwd))
			return true;
		else return false;
	}

	
}
