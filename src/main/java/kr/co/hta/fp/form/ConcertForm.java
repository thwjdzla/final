package kr.co.hta.fp.form;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ConcertForm {

	private String concertName;
	private String concertOwner;
	private String concertContent;
	private MultipartFile concertImg;
	private String telno1;
	private String telno2;
	private String telno3;
	private String concertNum1;
	private String concertNum2;
	private String concertNum3;
	private String concertAddress;
	private String detailAddress1;
	private String detailAddress2;
	private Date startDate;
	private Date endDate;
	private String locationlat;
	private String locationlng;
	private int cpNo;
	
	public String getConcertName() {
		return concertName;
	}
	public void setConcertName(String concertName) {
		this.concertName = concertName;
	}
	public String getConcertOwner() {
		return concertOwner;
	}
	public void setConcertOwner(String concertOwner) {
		this.concertOwner = concertOwner;
	}
	public String getConcertContent() {
		return concertContent;
	}
	public void setConcertContent(String concertContent) {
		this.concertContent = concertContent;
	}
	public MultipartFile getConcertImg() {
		return concertImg;
	}
	public void setConcertImg(MultipartFile concertImg) {
		this.concertImg = concertImg;
	}
	public String getTelno1() {
		return telno1;
	}
	public void setTelno1(String telno1) {
		this.telno1 = telno1;
	}
	public String getTelno2() {
		return telno2;
	}
	public void setTelno2(String telno2) {
		this.telno2 = telno2;
	}
	public String getTelno3() {
		return telno3;
	}
	public void setTelno3(String telno3) {
		this.telno3 = telno3;
	}
	public String getConcertNum1() {
		return concertNum1;
	}
	public void setConcertNum1(String concertNum1) {
		this.concertNum1 = concertNum1;
	}
	public String getConcertNum2() {
		return concertNum2;
	}
	public void setConcertNum2(String concertNum2) {
		this.concertNum2 = concertNum2;
	}
	public String getConcertNum3() {
		return concertNum3;
	}
	public void setConcertNum3(String concertNum3) {
		this.concertNum3 = concertNum3;
	}
	public String getConcertAddress() {
		return concertAddress;
	}
	public void setConcertAddress(String concertAddress) {
		this.concertAddress = concertAddress;
	}
	public String getDetailAddress1() {
		return detailAddress1;
	}
	public void setDetailAddress1(String detailAddress1) {
		this.detailAddress1 = detailAddress1;
	}
	public String getDetailAddress2() {
		return detailAddress2;
	}
	public void setDetailAddress2(String detailAddress2) {
		this.detailAddress2 = detailAddress2;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getLocationlat() {
		return locationlat;
	}
	public void setLocationlat(String locationlat) {
		this.locationlat = locationlat;
	}
	public String getLocationlng() {
		return locationlng;
	}
	public void setLocationlng(String locationlng) {
		this.locationlng = locationlng;
	}
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	@Override
	public String toString() {
		return "ConcertForm [concertName=" + concertName + ", concertOwner=" + concertOwner + ", concertContent="
				+ concertContent + ", concertImg=" + concertImg + ", telno1=" + telno1 + ", telno2=" + telno2
				+ ", telno3=" + telno3 + ", concertNum1=" + concertNum1 + ", concertNum2=" + concertNum2
				+ ", concertNum3=" + concertNum3 + ", concertAddress=" + concertAddress + ", detailAddress1="
				+ detailAddress1 + ", detailAddress2=" + detailAddress2 + ", startDate=" + startDate + ", endDate="
				+ endDate + ", locationlat=" + locationlat + ", locationlng=" + locationlng + ", cpNo=" + cpNo + "]";
	}
}
