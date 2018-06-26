package kr.co.hta.fp.form;

import org.springframework.web.multipart.MultipartFile;

public class ResortItemForm {

	private int cpNo;
	private int userNo;
	private String cpName;
	private String cpStatus;
	private String cpType;
	
	private int rsNo;
	private String rsName;
	private String rsAddress;
	private String rsLocation;
	private String rsTel;
	private String rsGrade;
	private String rsImg;
	private String rsOwner;
	private String rsContent;
	private String rsPhone;
	private String rsAddressDetail;
	
	private int riNo;
	private String riName;
	private String riType;
	private int riPrice;
	private int riCount;
	private String riStatus;
	private MultipartFile riImg;
	private String rriImg;
	
	public ResortItemForm() {
		
	}

	public ResortItemForm(int cpNo, int userNo, String cpName, String cpStatus, String cpType, int rsNo, String rsName,
			String rsAddress, String rsLocation, String rsTel, String rsGrade, String rsImg, String rsOwner,
			String rsContent, String rsPhone, String rsAddressDetail, int riNo, String riName, String riType,
			int riPrice, int riCount, String riStatus, MultipartFile riImg) {
		super();
		this.cpNo = cpNo;
		this.userNo = userNo;
		this.cpName = cpName;
		this.cpStatus = cpStatus;
		this.cpType = cpType;
		this.rsNo = rsNo;
		this.rsName = rsName;
		this.rsAddress = rsAddress;
		this.rsLocation = rsLocation;
		this.rsTel = rsTel;
		this.rsGrade = rsGrade;
		this.rsImg = rsImg;
		this.rsOwner = rsOwner;
		this.rsContent = rsContent;
		this.rsPhone = rsPhone;
		this.rsAddressDetail = rsAddressDetail;
		this.riNo = riNo;
		this.riName = riName;
		this.riType = riType;
		this.riPrice = riPrice;
		this.riCount = riCount;
		this.riStatus = riStatus;
		this.riImg = riImg;
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

	public int getRsNo() {
		return rsNo;
	}

	public void setRsNo(int rsNo) {
		this.rsNo = rsNo;
	}

	public String getRsName() {
		return rsName;
	}

	public void setRsName(String rsName) {
		this.rsName = rsName;
	}

	public String getRsAddress() {
		return rsAddress;
	}

	public void setRsAddress(String rsAddress) {
		this.rsAddress = rsAddress;
	}

	public String getRsLocation() {
		return rsLocation;
	}

	public void setRsLocation(String rsLocation) {
		this.rsLocation = rsLocation;
	}

	public String getRsTel() {
		return rsTel;
	}

	public void setRsTel(String rsTel) {
		this.rsTel = rsTel;
	}

	public String getRsGrade() {
		return rsGrade;
	}

	public void setRsGrade(String rsGrade) {
		this.rsGrade = rsGrade;
	}

	public String getRsImg() {
		return rsImg;
	}

	public void setRsImg(String rsImg) {
		this.rsImg = rsImg;
	}

	public String getRsOwner() {
		return rsOwner;
	}

	public void setRsOwner(String rsOwner) {
		this.rsOwner = rsOwner;
	}

	public String getRsContent() {
		return rsContent;
	}

	public void setRsContent(String rsContent) {
		this.rsContent = rsContent;
	}

	public String getRsPhone() {
		return rsPhone;
	}

	public void setRsPhone(String rsPhone) {
		this.rsPhone = rsPhone;
	}

	public String getRsAddressDetail() {
		return rsAddressDetail;
	}

	public void setRsAddressDetail(String rsAddressDetail) {
		this.rsAddressDetail = rsAddressDetail;
	}

	public int getRiNo() {
		return riNo;
	}

	public void setRiNo(int riNo) {
		this.riNo = riNo;
	}

	public String getRiName() {
		return riName;
	}

	public void setRiName(String riName) {
		this.riName = riName;
	}

	public String getRiType() {
		return riType;
	}

	public void setRiType(String riType) {
		this.riType = riType;
	}

	public int getRiPrice() {
		return riPrice;
	}

	public void setRiPrice(int riPrice) {
		this.riPrice = riPrice;
	}

	public int getRiCount() {
		return riCount;
	}

	public void setRiCount(int riCount) {
		this.riCount = riCount;
	}

	public String getRiStatus() {
		return riStatus;
	}

	public void setRiStatus(String riStatus) {
		this.riStatus = riStatus;
	}

	public MultipartFile getRiImg() {
		return riImg;
	}

	public void setRiImg(MultipartFile riImg) {
		this.riImg = riImg;
	}

	
	public String getRriImg() {
		return rriImg;
	}

	public void setRriImg(String rriImg) {
		this.rriImg = rriImg;
	}

	@Override
	public String toString() {
		return "ResortItemForm [cpNo=" + cpNo + ", userNo=" + userNo + ", cpName=" + cpName + ", cpStatus=" + cpStatus
				+ ", cpType=" + cpType + ", rsNo=" + rsNo + ", rsName=" + rsName + ", rsAddress=" + rsAddress
				+ ", rsLocation=" + rsLocation + ", rsTel=" + rsTel + ", rsGrade=" + rsGrade + ", rsImg=" + rsImg
				+ ", rsOwner=" + rsOwner + ", rsContent=" + rsContent + ", rsPhone=" + rsPhone + ", rsAddressDetail="
				+ rsAddressDetail + ", riNo=" + riNo + ", riName=" + riName + ", riType=" + riType + ", riPrice="
				+ riPrice + ", riCount=" + riCount + ", riStatus=" + riStatus + ", riImg=" + riImg + "]";
	}
	
}
