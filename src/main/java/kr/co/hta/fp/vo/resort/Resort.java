package kr.co.hta.fp.vo.resort;

import java.util.List;

public class Resort {

	private int no;
	private String name;
	private String address;
	private String locationLat;
	private String locationLng;
	private String option;
	private String tel;
	private int grade;
	private int cpNo;
	private int itemNo;
	private String img;
	private String owner;
	private String phone;
	private String content;
	private String addressDetail;
	private String star;
	List<ResortItem> items;
	
	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}
	
	public List<ResortItem> getItems() {
		return items;
	}

	public void setItems(List<ResortItem> items) {
		this.items = items;
	}
	

	public Resort() {
		
	}
	
	public Resort(int no, String name, String address, String locationLat, String locationLng, String option, String tel, int grade, int cpNo,
			int itemNo, String img) {
		super();
		this.no = no;
		this.name = name;
		this.address = address;
		this.locationLat = locationLat;
		this.locationLng = locationLng;
		this.option = option;
		this.tel = tel;
		this.grade = grade;
		this.cpNo = cpNo;
		this.itemNo = itemNo;
		this.img = img;
	}
	
	
	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getContent() {
		return content;
	}
	
	public String getContents() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
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
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Resort [no=" + no + ", name=" + name + ", address=" + address + ", locationLat=" + locationLat
				+ ", locationLng=" + locationLng + ", option=" + option + ", tel=" + tel + ", grade=" + grade
				+ ", cpNo=" + cpNo + ", itemNo=" + itemNo + ", img=" + img + ", owner=" + owner + ", phone=" + phone
				+ ", content=" + content + ", addressDetail=" + addressDetail + ", getAddressDetail()="
				+ getAddressDetail() + ", getOwner()=" + getOwner() + ", getPhone()=" + getPhone() + ", getContent()="
				+ getContent() + ", getNo()=" + getNo() + ", getName()=" + getName() + ", getAddress()=" + getAddress()
				+ ", getLocationLat()=" + getLocationLat() + ", getLocationLng()=" + getLocationLng() + ", getOption()="
				+ getOption() + ", getTel()=" + getTel() + ", getGrade()=" + getGrade() + ", getCpNo()=" + getCpNo()
				+ ", getItemNo()=" + getItemNo() + ", getImg()=" + getImg() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
}

