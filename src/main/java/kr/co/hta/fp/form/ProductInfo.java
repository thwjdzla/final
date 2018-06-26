package kr.co.hta.fp.form;

public class ProductInfo {

	private int no;
	private String type;
	private String checkIn;
	private String checkOut;
	private int packageNo;
	private int qty;
	private int rate;
	
	public ProductInfo() {}

	public ProductInfo(int no, String type, String checkIn, String checkOut) {
		super();
		this.no = no;
		this.type = type;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
	}
	
	public ProductInfo(int no, String type, String checkIn, String checkOut, int packageNo) {
		super();
		this.no = no;
		this.type = type;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.packageNo = packageNo;
	}

	public ProductInfo(int no, String type, String checkIn, String checkOut,int packageNo, int qty) {
		super();
		this.no = no;
		this.type = type;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.packageNo = packageNo;
		this.qty = qty;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public int getPackageNo() {
		return packageNo;
	}

	public void setPackageNo(int packageNo) {
		this.packageNo = packageNo;
	}


	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	@Override
	public String toString() {
		return "ProductInfo [no=" + no + ", type=" + type + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", packageNo=" + packageNo + ", qty=" + qty + "]";
	}
	
}
