package kr.co.hta.fp.form;

public class ReserveForm {

	private int userNo;
	private int usePoint;
	private int price;
	private String request;
	private String packageNums;
	private String qty;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getUsePoint() {
		return usePoint;
	}
	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getPackageNums() {
		return packageNums;
	}
	public void setPackageNums(String packageNums) {
		this.packageNums = packageNums;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	
	@Override
	public String toString() {
		return "ReserveForm [userNo=" + userNo + ", usePoint=" + usePoint + ", price=" + price + ", request=" + request
				+ ", packageNums=" + packageNums + ", qty=" + qty + "]";
	}
	
}
