package kr.co.hta.fp.vo;

import java.util.Date;

public class Reserve {

	private int reserveNo;
	private Date reserveDate;
	private Date checkIn;
	private Date checkOut;
	private int price;
	private int packageNo;
	private int userNo;
	private String status;
	private int usePoint;
	private int stackPoint;
	private String request;
	private int qty;
	private String reason;
	
	public int getReserveNo() {
		return reserveNo;
	}
	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}
	public Date getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(Date reserveDate) {
		this.reserveDate = reserveDate;
	}
	public Date getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}
	public Date getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPackageNo() {
		return packageNo;
	}
	public void setPackageNo(int packageNo) {
		this.packageNo = packageNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getUsePoint() {
		return usePoint;
	}
	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}
	public int getStackPoint() {
		return stackPoint;
	}
	public void setStackPoint(int stackPoint) {
		this.stackPoint = stackPoint;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	@Override
	public String toString() {
		return "Reserve [reserveNo=" + reserveNo + ", reserveDate=" + reserveDate + ", checkIn=" + checkIn
				+ ", checkOut=" + checkOut + ", price=" + price + ", packageNo=" + packageNo + ", userNo=" + userNo
				+ ", status=" + status + ", usePoint=" + usePoint + ", stackPoint=" + stackPoint + ", request="
				+ request + ", qty=" + qty + ", reason=" + reason + "]";
	}
	
}
