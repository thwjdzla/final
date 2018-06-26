package kr.co.hta.fp.form;

public class HotelListForm {

	private int cpNo;
	private int userNo;
	private String cpName;
	private String cpStatus;
	private String cpType;
	private int no;
	private String name;
	private String img;
	
	public HotelListForm() {
		
	}
	
	public HotelListForm(int cpNo, int userNo, String cpName, String cpStatus, String cpType, int no, String name,
			String img) {
		super();
		this.cpNo = cpNo;
		this.userNo = userNo;
		this.cpName = cpName;
		this.cpStatus = cpStatus;
		this.cpType = cpType;
		this.no = no;
		this.name = name;
		this.img = img;
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
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "HotelListForm [cpNo=" + cpNo + ", userNo=" + userNo + ", cpName=" + cpName + ", cpStatus=" + cpStatus
				+ ", cpType=" + cpType + ", no=" + no + ", name=" + name + ", img=" + img + "]";
	}
	
	
	
}
