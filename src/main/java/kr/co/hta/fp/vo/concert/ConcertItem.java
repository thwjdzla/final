package kr.co.hta.fp.vo.concert;

import java.util.Date;

public class ConcertItem {
	
	private int no;
	private String name;
	private int price;
	private String status;
	private String img;
	private int qty;
	private String ccitDate;
	private int ccNo;
	
	public ConcertItem() {
		
	}

	public ConcertItem(int no, String name, int price, String status, String img, int qty, String ccitDate, int ccNo) {
		super();
		this.no = no;
		this.name = name;
		this.price = price;
		this.status = status;
		this.img = img;
		this.qty = qty;
		this.ccitDate = ccitDate;
		this.ccNo = ccNo;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public int getCcNo() {
		return ccNo;
	}

	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}

	@Override
	public String toString() {
		return "ConcertItem [no=" + no + ", name=" + name + ", price=" + price + ", status=" + status + ", img=" + img
				+ ", qty=" + qty + ", ccitDate=" + ccitDate + ", ccNo=" + ccNo + "]";
	}
	
	
}
