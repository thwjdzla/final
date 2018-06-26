package kr.co.hta.fp.form;

public class CompanyForm {

	private int cpNo;
	private int userNo;
	private String cpName;
	private String cpStatus;
	private String cpType;
	private String userId;
	
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getCpName() {
		return cpName;
	}
	public void setCpName(String cpName) {
		this.cpName = cpName;
	}
	public String getCpStatus() {
		return cpStatus;
	}
	public void setCpStatus(String cpStatus) {
		this.cpStatus = cpStatus;
	}
	public String getCpType() {
		return cpType;
	}
	public void setCpType(String cpType) {
		this.cpType = cpType;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "CompanyForm [cpNo=" + cpNo + ", userNo=" + userNo + ", cpName=" + cpName + ", cpStatus=" + cpStatus
				+ ", cpType=" + cpType + ", userId=" + userId + "]";
	}
}
