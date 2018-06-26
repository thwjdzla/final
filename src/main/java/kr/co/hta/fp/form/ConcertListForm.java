package kr.co.hta.fp.form;

public class ConcertListForm {

	private int cpNo;
	private int userNo;
	private String cpName;
	private String cpStatus;
	private String cpType;
	private int ccNo;
	private String ccName;
	private String ccImg;
	
	public ConcertListForm() {
		
	}
	
	public ConcertListForm(int cpNo, int userNo, String cpName, String cpStatus, String cpType, int ccNo, String ccName,
			String ccImg) {
		super();
		this.cpNo = cpNo;
		this.userNo = userNo;
		this.cpName = cpName;
		this.cpStatus = cpStatus;
		this.cpType = cpType;
		this.ccNo = ccNo;
		this.ccName = ccName;
		this.ccImg = ccImg;
	}
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
	public int getCcNo() {
		return ccNo;
	}
	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}
	public String getCcName() {
		return ccName;
	}
	public void setCcName(String ccName) {
		this.ccName = ccName;
	}
	public String getCcImg() {
		return ccImg;
	}
	public void setCcImg(String ccImg) {
		this.ccImg = ccImg;
	}
	@Override
	public String toString() {
		return "ConcertListForm [cpNo=" + cpNo + ", userNo=" + userNo + ", cpName=" + cpName + ", cpStatus=" + cpStatus
				+ ", cpType=" + cpType + ", ccNo=" + ccNo + ", ccName=" + ccName + ", ccImg=" + ccImg + "]";
	}
	
}
