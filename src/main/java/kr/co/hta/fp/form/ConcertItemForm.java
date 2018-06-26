package kr.co.hta.fp.form;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ConcertItemForm {
	
	private int cpNo;
	private int userNo;
	private String cpName;
	private String cpStatus;
	private String cpType;
	
	private int ccNo;
	private String ccName;
	private String ccImg;
	
	private int ciNo;
	private String ciName;
	private int ciPrice; 
	private String ciStatus;
	private MultipartFile ciImg;
	private String cciImg;
	private int ciQty;
	private String ciDate;
	
	public ConcertItemForm() {
		
	}

	public ConcertItemForm(int cpNo, int userNo, String cpName, String cpStatus, String cpType, int ccNo, String ccName,
			String ccImg, int ciNo, String ciName, int ciPrice, String ciStatus, MultipartFile ciImg, int ciQty,
			String ciDate) {
		super();
		this.cpNo = cpNo;
		this.userNo = userNo;
		this.cpName = cpName;
		this.cpStatus = cpStatus;
		this.cpType = cpType;
		this.ccNo = ccNo;
		this.ccName = ccName;
		this.ccImg = ccImg;
		this.ciNo = ciNo;
		this.ciName = ciName;
		this.ciPrice = ciPrice;
		this.ciStatus = ciStatus;
		this.ciImg = ciImg;
		this.ciQty = ciQty;
		this.ciDate = ciDate;
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

	public int getCiNo() {
		return ciNo;
	}

	public void setCiNo(int ciNo) {
		this.ciNo = ciNo;
	}

	public String getCiName() {
		return ciName;
	}

	public void setCiName(String ciName) {
		this.ciName = ciName;
	}

	public int getCiPrice() {
		return ciPrice;
	}

	public void setCiPrice(int ciPrice) {
		this.ciPrice = ciPrice;
	}

	public String getCiStatus() {
		return ciStatus;
	}

	public void setCiStatus(String ciStatus) {
		this.ciStatus = ciStatus;
	}

	public MultipartFile getCiImg() {
		return ciImg;
	}

	public void setCiImg(MultipartFile ciImg) {
		this.ciImg = ciImg;
	}

	public int getCiQty() {
		return ciQty;
	}

	public void setCiQty(int ciQty) {
		this.ciQty = ciQty;
	}

	public String getCiDate() {
		return ciDate;
	}

	public void setCiDate(String ciDate) {
		this.ciDate = ciDate;
	}

	
	public String getCciImg() {
		return cciImg;
	}

	public void setCciImg(String cciImg) {
		this.cciImg = cciImg;
	}

	@Override
	public String toString() {
		return "ConcertItemForm [cpNo=" + cpNo + ", userNo=" + userNo + ", cpName=" + cpName + ", cpStatus=" + cpStatus
				+ ", cpType=" + cpType + ", ccNo=" + ccNo + ", ccName=" + ccName + ", ccImg=" + ccImg + ", ciNo=" + ciNo
				+ ", ciName=" + ciName + ", ciPrice=" + ciPrice + ", ciStatus=" + ciStatus + ", ciImg=" + ciImg
				+ ", ciQty=" + ciQty + ", ciDate=" + ciDate + "]";
	}

	
}
