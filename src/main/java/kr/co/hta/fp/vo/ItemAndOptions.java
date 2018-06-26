package kr.co.hta.fp.vo;

import java.util.List;

public class ItemAndOptions {

	private int no;
	private String name;
	private String type;
	private int price;
	private int count;
	private String status;
	private int cpNo;
	private int qty;
	private String img;
	private List<String> options;
	private String ccitDate;
	
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
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public List<String> getOptions() {
		return options;
	}
	public void setOptions(List<String> options) {
		this.options = options;
	}
	public String getCcitDate() {
		return ccitDate;
	}
	public void setCcitDate(String ccitDate) {
		this.ccitDate = ccitDate;
	}
	@Override
	public String toString() {
		return "HotelItemAndOptions [no=" + no + ", name=" + name + ", type=" + type + ", price=" + price + ", count="
				+ count + ", status=" + status + ", cpNo=" + cpNo + ", qty=" + qty + ", img=" + img + ", options="
				+ options + "]";
	}
	
}
