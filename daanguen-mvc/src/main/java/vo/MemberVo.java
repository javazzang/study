package vo;

/*
 * 회원 한명의 데이터(객체)를 정의합니다.
 */

public class MemberVo {

	private int userNo; // 회원식별번호
	private String userName; // 회원이름
	private String userEmail; // 회원 이메일
	private String userPwd; // 회원 비밀번호
	private String registDate; // 회원 가입일시
	
	
	public int getUserNo() {
		return userNo;
	}
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserEmail() {
		return userEmail;
	}
	
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	public String getUserPwd() {
		return userPwd;
	}
	
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	public String getRegistDate() {
		return registDate;
	}
	
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}

}
