package kr.co.hta.fp.form;

import org.springframework.web.multipart.MultipartFile;

public class ResortForm {

	private int cpNo;
	private String resortName;
	private String resortOwner;
	private String resortContent;
	private MultipartFile resortImg;
	private String resortTelNo1;
	private String resortTelNo2;
	private String resortTelNo3;
	private String resortNum1;
	private String resortNum2;
	private String resortNum3;
	private String resortAddress;
	private String detailAddress1;
	private String detailAddress2;
	private String resortLocationLng;
	private String resortLocationLat;
	
	
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public String getResortLocationLng() {
		return resortLocationLng;
	}
	public void setResortLocationLng(String resortLocationLng) {
		this.resortLocationLng = resortLocationLng;
	}
	public String getResortLocationLat() {
		return resortLocationLat;
	}
	public void setResortLocationLat(String resortLocationLat) {
		this.resortLocationLat = resortLocationLat;
	}
	public String getResortName() {
		return resortName;
	}
	public void setResortName(String resortName) {
		this.resortName = resortName;
	}
	public String getResortOwner() {
		return resortOwner;
	}
	public void setResortOwner(String resortOwner) {
		this.resortOwner = resortOwner;
	}
	public String getResortContent() {
		return resortContent;
	}
	public void setResortContent(String resortContent) {
		this.resortContent = resortContent;
	}
	public MultipartFile getResortImg() {
		return resortImg;
	}
	public void setResortImg(MultipartFile resortImg) {
		this.resortImg = resortImg;
	}
	public String getResortTelNo1() {
		return resortTelNo1;
	}
	public void setResortTelNo1(String resortTelNo1) {
		this.resortTelNo1 = resortTelNo1;
	}
	public String getResortTelNo2() {
		return resortTelNo2;
	}
	public void setResortTelNo2(String resortTelNo2) {
		this.resortTelNo2 = resortTelNo2;
	}
	public String getResortTelNo3() {
		return resortTelNo3;
	}
	public void setResortTelNo3(String resortTelNo3) {
		this.resortTelNo3 = resortTelNo3;
	}
	public String getResortNum1() {
		return resortNum1;
	}
	public void setResortNum1(String resortNum1) {
		this.resortNum1 = resortNum1;
	}
	public String getResortNum2() {
		return resortNum2;
	}
	public void setResortNum2(String resortNum2) {
		this.resortNum2 = resortNum2;
	}
	public String getResortNum3() {
		return resortNum3;
	}
	public void setResortNum3(String resortNum3) {
		this.resortNum3 = resortNum3;
	}
	public String getResortAddress() {
		return resortAddress;
	}
	public void setResortAddress(String resortAddress) {
		this.resortAddress = resortAddress;
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
		return "ResortForm [resortName=" + resortName + ", resortOwner=" + resortOwner + ", resortContent="
				+ resortContent + ", resortImg=" + resortImg + ", resortTelNo1=" + resortTelNo1 + ", resortTelNo2="
				+ resortTelNo2 + ", resortTelNo3=" + resortTelNo3 + ", resortNum1=" + resortNum1 + ", resortNum2="
				+ resortNum2 + ", resortNum3=" + resortNum3 + ", resortAddress=" + resortAddress + ", detailAddress1="
				+ detailAddress1 + ", detailAddress2=" + detailAddress2 + ", resortLocationLng=" + resortLocationLng
				+ ", resortLocationLat=" + resortLocationLat + ", cpNo=" + cpNo + "]";
	}
}
