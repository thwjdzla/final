package kr.co.hta.fp.form;

import java.util.Date;

import kr.co.hta.fp.vo.User;

public class ReserveStringForm {

	private int reserveNo;
	private String reserveDate;
	private String checkIn;
	private String checkOut;
	private int price;
	private int packageNo;
	private int userNo;
	private String status;
	private int usePoint;
	private int stackPoint;
	private String request;
	private String packageName;
	private int count;
	private boolean difDay;
	private long refundPrice;
	private String userId;
	private String reason;
	private Object item;
	private User user;
	
	public int getReserveNo() {
		return reserveNo;
	}
	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}
	public String getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
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
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public boolean getDifDay() {
		return difDay;
	}
	public void setDifDay(boolean difDay) {
		this.difDay = difDay;
	}
	public long getRefundPrice() {
		return refundPrice;
	}
	public void setRefundPrice(long refundPrice) {
		this.refundPrice = refundPrice;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Object getItem() {
		return item;
	}
	public void setItem(Object item) {
		this.item = item;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "ReserveStringForm [reserveNo=" + reserveNo + ", reserveDate=" + reserveDate + ", checkIn=" + checkIn
				+ ", checkOut=" + checkOut + ", price=" + price + ", packageNo=" + packageNo + ", userNo=" + userNo
				+ ", status=" + status + ", usePoint=" + usePoint + ", stackPoint=" + stackPoint + ", request="
				+ request + ", packageName=" + packageName + ", count=" + count + ", difDay=" + difDay
				+ ", refundPrice=" + refundPrice + ", userId=" + userId + ", reason=" + reason + ", item=" + item
				+ ", user=" + user + "]";
	}
	
}
