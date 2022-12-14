package FinalProject.model;

public class DTO {
	
	public DTO() {
		super();
	}
	// 회원 가입용
	private String user_id;
	private String user_pw;
	private String user_number;
	private String user_name;
	private String user_address;
	private String type;
	private int point;
	
	// 로그인 용
	private String login_id;
	private String login_pw;
	private String login_type;
	public String getLogin_type() {
		return login_type;
	}
	public void setLogin_type(String login_type) {
		this.login_type = login_type;
	}
	private boolean correct_login;
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public String getLogin_pw() {
		return login_pw;
	}
	public void setLogin_pw(String login_pw) {
		this.login_pw = login_pw;
	}
	public boolean isCorrect_login() {
		return correct_login;
	}
	public void setCorrect_login(boolean correct_login) {
		this.correct_login = correct_login;
	}
	
	public DTO(String user_id, String user_pw, String user_number ,String user_name, String user_address, String type, int point) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_number = user_number;
		this.user_name = user_name;
		this.user_address = user_address;
		this.type = type;
		this.point = point;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_number() {
		return user_number;
	}
	public void setUser_number(String user_number) {
		this.user_number = user_number;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}
