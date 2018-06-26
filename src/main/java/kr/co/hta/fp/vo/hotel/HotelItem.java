package kr.co.hta.fp.vo.hotel;

import java.util.List;

public class HotelItem {

	private int no;
	private String name;
	private String type;
	private int price;
	private int count;
	private String status;
	private int hotelNo;
	private int qty;
	private String img;
	
	private List<HotelItemOption> options;
	
	public HotelItem() {}

	public HotelItem(int no, String name, String type, int price, int count, String status, int hotelNo, int qty,
			String img) {
		super();
		this.no = no;
		this.name = name;
		this.type = type;
		this.price = price;
		this.count = count;
		this.status = status;
		this.hotelNo = hotelNo;
		this.qty = qty;
		this.img = img;
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

	public int getHotelNo() {
		return hotelNo;
	}

	public void setHotelNo(int hotelNo) {
		this.hotelNo = hotelNo;
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

	public List<HotelItemOption> getOptions() {
		return options;
	}

	public void setOptions(List<HotelItemOption> options) {
		this.options = options;
	}

	@Override
	public String toString() {
		return "HotelItem [no=" + no + ", name=" + name + ", type=" + type + ", price=" + price + ", count=" + count
				+ ", status=" + status + ", hotelNo=" + hotelNo + ", qty=" + qty + ", img=" + img + "]";
	}
	
}
