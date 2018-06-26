package kr.co.hta.fp.vo;

import java.util.Date;

public class ProductInfoForDate {

	private int no;
	private String type;
	private Date checkIn;
	private Date checkOut;
	
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
	@Override
	public String toString() {
		return "ProductInfoForDate [no=" + no + ", type=" + type + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ "]";
	}
	
}
