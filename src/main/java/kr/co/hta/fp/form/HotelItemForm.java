package kr.co.hta.fp.form;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.co.hta.fp.vo.hotel.HotelItemOption;


public class HotelItemForm {
	
	private int cpNo;
	private int userNo;
	private String cpName;
	private String cpStatus;
	private String cpType;
	
	private int htNo;
	private String htName;
	private String htAddress;
	private String htContents;
	private String htTel;
	private int htGrade;
	private int htStar;
	private int htRoomCount;
	private String htImg;
	private String locationLat;
	private String locationLng;
	private String htAddressDetail;
	private String htOwner;
	private String htPhone;
	
	private int hiNo;
	private String hiName;
	private String hiType;
	private int hiPrice;
	private int hiCount;
	private String hiStatus;
	private int hiQty;
	private MultipartFile hiImg;
	private String hhiImg;
	
	private String[] options;
	
	private List<HotelItemOption> itemOptions;

	public HotelItemForm() {
		
	}

	public HotelItemForm(int cpNo, int userNo, String cpName, String cpStatus, String cpType, int htNo, String htName,
			String htAddress, String htContents, String htTel, int htGrade, int htStar, int htRoomCount, String htImg,
			String locationLat, String locationLng, String htAddressDetail, String htOwner, String htPhone, int hiNo,
			String hiName, String hiType, int hiPrice, int hiCount, String hiStatus, int hiQty, MultipartFile hiImg,
			String garage, String restaurant, String pool, String singingroom, String snackbar, String tv,
			String airconditioner) {
		super();
		this.cpNo = cpNo;
		this.userNo = userNo;
		this.cpName = cpName;
		this.cpStatus = cpStatus;
		this.cpType = cpType;
		this.htNo = htNo;
		this.htName = htName;
		this.htAddress = htAddress;
		this.htContents = htContents;
		this.htTel = htTel;
		this.htGrade = htGrade;
		this.htStar = htStar;
		this.htRoomCount = htRoomCount;
		this.htImg = htImg;
		this.locationLat = locationLat;
		this.locationLng = locationLng;
		this.htAddressDetail = htAddressDetail;
		this.htOwner = htOwner;
		this.htPhone = htPhone;
		this.hiNo = hiNo;
		this.hiName = hiName;
		this.hiType = hiType;
		this.hiPrice = hiPrice;
		this.hiCount = hiCount;
		this.hiStatus = hiStatus;
		this.hiQty = hiQty;
		this.hiImg = hiImg;
		
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

	public int getHtNo() {
		return htNo;
	}

	public void setHtNo(int htNo) {
		this.htNo = htNo;
	}

	public String getHtName() {
		return htName;
	}

	public void setHtName(String htName) {
		this.htName = htName;
	}

	public String getHtAddress() {
		return htAddress;
	}

	public void setHtAddress(String htAddress) {
		this.htAddress = htAddress;
	}

	public String getHtContents() {
		return htContents;
	}

	public void setHtContents(String htContents) {
		this.htContents = htContents;
	}

	public String getHtTel() {
		return htTel;
	}

	public void setHtTel(String htTel) {
		this.htTel = htTel;
	}

	public int getHtGrade() {
		return htGrade;
	}

	public void setHtGrade(int htGrade) {
		this.htGrade = htGrade;
	}

	public int getHtStar() {
		return htStar;
	}

	public void setHtStar(int htStar) {
		this.htStar = htStar;
	}

	public int getHtRoomCount() {
		return htRoomCount;
	}

	public void setHtRoomCount(int htRoomCount) {
		this.htRoomCount = htRoomCount;
	}

	public String getHtImg() {
		return htImg;
	}

	public void setHtImg(String htImg) {
		this.htImg = htImg;
	}

	public String getLocationLat() {
		return locationLat;
	}

	public void setLocationLat(String locationLat) {
		this.locationLat = locationLat;
	}

	public String getLocationLng() {
		return locationLng;
	}

	public void setLocationLng(String locationLng) {
		this.locationLng = locationLng;
	}

	public String getHtAddressDetail() {
		return htAddressDetail;
	}

	public void setHtAddressDetail(String htAddressDetail) {
		this.htAddressDetail = htAddressDetail;
	}

	public String getHtOwner() {
		return htOwner;
	}

	public void setHtOwner(String htOwner) {
		this.htOwner = htOwner;
	}

	public String getHtPhone() {
		return htPhone;
	}

	public void setHtPhone(String htPhone) {
		this.htPhone = htPhone;
	}

	public int getHiNo() {
		return hiNo;
	}

	public void setHiNo(int hiNo) {
		this.hiNo = hiNo;
	}

	public String getHiName() {
		return hiName;
	}

	public void setHiName(String hiName) {
		this.hiName = hiName;
	}

	public String getHiType() {
		return hiType;
	}

	public void setHiType(String hiType) {
		this.hiType = hiType;
	}

	public int getHiPrice() {
		return hiPrice;
	}

	public void setHiPrice(int hiPrice) {
		this.hiPrice = hiPrice;
	}

	public int getHiCount() {
		return hiCount;
	}

	public void setHiCount(int hiCount) {
		this.hiCount = hiCount;
	}

	public String getHiStatus() {
		return hiStatus;
	}

	public void setHiStatus(String hiStatus) {
		this.hiStatus = hiStatus;
	}

	public int getHiQty() {
		return hiQty;
	}

	public void setHiQty(int hiQty) {
		this.hiQty = hiQty;
	}

	public MultipartFile getHiImg() {
		return hiImg;
	}

	public void setHiImg(MultipartFile hiImg) {
		this.hiImg = hiImg;
	}

	public String[] getOptions() {
		return options;
	}

	public void setOptions(String[] options) {
		this.options = options;
	}

	public List<HotelItemOption> getItemOptions() {
		return itemOptions;
	}

	public void setItemOptions(List<HotelItemOption> itemOptions) {
		this.itemOptions = itemOptions;
	}

	public String getHhiImg() {
		return hhiImg;
	}

	public void setHhiImg(String hhiImg) {
		this.hhiImg = hhiImg;
	}

	@Override
	public String toString() {
		return "HotelItemForm [cpNo=" + cpNo + ", userNo=" + userNo + ", cpName=" + cpName + ", cpStatus=" + cpStatus
				+ ", cpType=" + cpType + ", htNo=" + htNo + ", htName=" + htName + ", htAddress=" + htAddress
				+ ", htContents=" + htContents + ", htTel=" + htTel + ", htGrade=" + htGrade + ", htStar=" + htStar
				+ ", htRoomCount=" + htRoomCount + ", htImg=" + htImg + ", locationLat=" + locationLat
				+ ", locationLng=" + locationLng + ", htAddressDetail=" + htAddressDetail + ", htOwner=" + htOwner
				+ ", htPhone=" + htPhone + ", hiNo=" + hiNo + ", hiName=" + hiName + ", hiType=" + hiType + ", hiPrice="
				+ hiPrice + ", hiCount=" + hiCount + ", hiStatus=" + hiStatus + ", hiQty=" + hiQty + ", hiImg=" + hiImg
				+ ", hhiImg=" + hhiImg + ", options=" + Arrays.toString(options) + ", itemOptions=" + itemOptions + "]";
	}

	
	
}
