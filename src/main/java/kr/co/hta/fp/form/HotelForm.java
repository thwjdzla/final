package kr.co.hta.fp.form;

import org.springframework.web.multipart.MultipartFile;

public class HotelForm {

	private int cpNo;
	private String hotelName;
	private String hotelOwner;
	private String hotelContent;
	private MultipartFile hotelImg;
	private int hotelStar;
	private String telno1;
	private String telno2;
	private String telno3;
	private String hotelNum1;
	private String hotelNum2;
	private String hotelNum3;
	private String hotelAddress;
	private String detailAddress1;
	private String detailAddress2;
	private String hotelLocationLat;
	private String hotelLocationLng;
	
	
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public String getHotelLocationLat() {
		return hotelLocationLat;
	}
	public void setHotelLocationLat(String hotelLocationLat) {
		this.hotelLocationLat = hotelLocationLat;
	}
	public String getHotelLocationLng() {
		return hotelLocationLng;
	}
	public void setHotelLocationLng(String hotelLocationLng) {
		this.hotelLocationLng = hotelLocationLng;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelOwner() {
		return hotelOwner;
	}
	public void setHotelOwner(String hotelOwner) {
		this.hotelOwner = hotelOwner;
	}
	public String getHotelContent() {
		return hotelContent;
	}
	public void setHotelContent(String hotelContent) {
		this.hotelContent = hotelContent;
	}
	public MultipartFile getHotelImg() {
		return hotelImg;
	}
	public void setHotelImg(MultipartFile hotelImg) {
		this.hotelImg = hotelImg;
	}
	public int getHotelStar() {
		return hotelStar;
	}
	public void setHotelStar(int hotelStar) {
		this.hotelStar = hotelStar;
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
	public String getHotelNum1() {
		return hotelNum1;
	}
	public void setHotelNum1(String hotelNum1) {
		this.hotelNum1 = hotelNum1;
	}
	public String getHotelNum2() {
		return hotelNum2;
	}
	public void setHotelNum2(String hotelNum2) {
		this.hotelNum2 = hotelNum2;
	}
	public String getHotelNum3() {
		return hotelNum3;
	}
	public void setHotelNum3(String hotelNum3) {
		this.hotelNum3 = hotelNum3;
	}
	public String getHotelAddress() {
		return hotelAddress;
	}
	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
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
	@Override
	public String toString() {
		return "HotelForm [cpNo=" + cpNo + ", hotelName=" + hotelName + ", hotelOwner=" + hotelOwner + ", hotelContent="
				+ hotelContent + ", hotelImg=" + hotelImg + ", hotelStar=" + hotelStar + ", telno1=" + telno1
				+ ", telno2=" + telno2 + ", telno3=" + telno3 + ", hotelNum1=" + hotelNum1 + ", hotelNum2=" + hotelNum2
				+ ", hotelNum3=" + hotelNum3 + ", hotelAddress=" + hotelAddress + ", detailAddress1=" + detailAddress1
				+ ", detailAddress2=" + detailAddress2 + ", hotelLocationLat=" + hotelLocationLat
				+ ", hotelLocationLng=" + hotelLocationLng + "]";
	}
	
}
