package kr.co.hta.fp.vo.resort;

public class ResortItem {

	private int no;
	private String name;
	private String type;
	private int price;
	private int count;
	private String status;
	private String img;
	private int rsNo;
	
	public ResortItem() {
		
	}
	
	public ResortItem(int no, String name, String type, int price, int count, String status, String img, int rsNo) {
		super();
		this.no = no;
		this.name = name;
		this.type = type;
		this.price = price;
		this.count = count;
		this.status = status;
		this.img = img;
		this.rsNo = rsNo;
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

	public int getRsNo() {
		return rsNo;
	}

	public void setRsNo(int rsNo) {
		this.rsNo = rsNo;
	}

	@Override
	public String toString() {
		return "ResortItem [no=" + no + ", name=" + name + ", type=" + type + ", price=" + price + ", count=" + count
				+ ", status=" + status + ", img=" + img + ", rsNo=" + rsNo + "]";
	}
	
	
}
