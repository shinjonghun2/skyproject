package kr.co.skypjt.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {
	@Size(min=2, max=4)
	@Pattern(regexp="[가-힣]*")
	private String user_name; //이름
	
	@Size(min=8, max=8)
	private String user_birth; //생년월일
	
	@Size(min=4, max=20)
	@Pattern(regexp="[a-zA-Z0-9]*")
	private String user_id;    //아이디
	
	@Size(min=4, max=20)
	@Pattern(regexp="[a-zA-Z0-9]*")
	private String user_pw;    //비밀번호
	
	@Size(min=4, max=20)
	@Pattern(regexp="[a-zA-Z0-9]*")
	private String user_pw2;   //비밀번호확인
	
	private String user_email; // 이메일
	private String user_phone; // 연락처
	
	
	private boolean userIdExist;  //아이디 중복여부
	private boolean userLogin;	//로그인 상태

	//로그인/로그아웃 여부
	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}

	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}

	public UserBean() {
		this.userIdExist=false; //아이디가 있는지 없느지 알수가 없으므로 false로 저장
		this.userLogin=false; //로그인 초기 상태 설정
	}

	public boolean isUserIdExist() {  
		return userIdExist;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
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
	public String getUser_pw2() {
		return user_pw2;
	}
	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	
	
}
