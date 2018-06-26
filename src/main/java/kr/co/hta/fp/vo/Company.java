package kr.co.hta.fp.vo;

public class Company {

	private int cpNo;
	private int userNo;
	private String cpName;
	private String cpStatus;
	private String cpType;
	
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
	@Override
	public String toString() {
		return "Company [cpNo=" + cpNo + ", userNo=" + userNo + ", cpName=" + cpName + ", cpStatus=" + cpStatus
				+ ", cpType=" + cpType + "]";
	}
}
