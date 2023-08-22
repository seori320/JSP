package login;

public class login {
	private String id;
	private String password;
	
	final String db_id="user";
	final String db_password="111111";
	
	public boolean CheckUser () {
		if( db_id.equals(id) && db_password.equals(password) ) {
			return true;
		}
		else {
			return false;
		}
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}

}
