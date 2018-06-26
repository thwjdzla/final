package kr.co.hta.fp.form;

import java.text.DecimalFormat;

public class ItemForm {

	private int no;
	private String name;
	private String type;
	private int price;
	private int count;
	private String status;
	private String img;
	private int qty;
	
	private String ccitDate; 
	
	private int hotelNo;
	private int rsNo;
	private int ccNo;
	
	private String companyName;
	
	private static DecimalFormat df = new DecimalFormat("#,###");
	
	
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getCcitDate() {
		return ccitDate;
	}
	public void setCcitDate(String ccitDate) {
		this.ccitDate = ccitDate;
	}
	public int getHotelNo() {
		return hotelNo;
	}
	public void setHotelNo(int hotelNo) {
		this.hotelNo = hotelNo;
	}
	public int getRsNo() {
		return rsNo;
	}
	public void setRsNo(int rsNo) {
		this.rsNo = rsNo;
	}
	public int getCcNo() {
		return ccNo;
	}
	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}
	public String getPriceFmt() {
		if (price == 0) {
			return "";
		}
		return df.format(price);
	}
	
	@Override
	public String toString() {
		return "ItemForm [no=" + no + ", name=" + name + ", type=" + type + ", price=" + price + ", count=" + count
				+ ", status=" + status + ", img=" + img + ", qty=" + qty + ", ccitDate=" + ccitDate + ", hotelNo="
				+ hotelNo + ", rsNo=" + rsNo + ", ccNo=" + ccNo + "]";
	}
}
