package kr.co.hta.fp.vo.hotel;

import java.util.List;

public class Hotel {
	private int no;
	private String name;
	private String address;	
	private String locationLat;
	private String locationLng;
	private String contents;
	private String tel;
	private String phone;
	private String owner;
	private String addressDetail;
	private int grade;
	private int star;
	private int roomCount;
	private int cpNo;
	private String img;
	List<HotelItem> items;
	


	public List<HotelItem> getItems() {
		return items;
	}
	public void setItems(List<HotelItem> items) {
		this.items = items;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(int roomCount) {
		this.roomCount = roomCount;
	}
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
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
	@Override
	public String toString() {
		return "Hotel [no=" + no + ", name=" + name + ", address=" + address + ", locationLat=" + locationLat
				+ ", locationLng=" + locationLng + ", contents=" + contents + ", tel=" + tel + ", phone=" + phone
				+ ", owner=" + owner + ", addressDetail=" + addressDetail + ", grade=" + grade + ", star=" + star
				+ ", roomCount=" + roomCount + ", cpNo=" + cpNo + ", img=" + img + "]";
	}
}
