package kr.co.hta.fp.form;

import java.time.LocalDate;
import java.util.Date;

public class ProductAllInfo {

	private String checkIn;
	private String checkOut;
	private long difDay;
	private Object item;
	private String itemCp;
	private int packageNo;
	private int qty;
	private int rate;
	private String type;
	
	public ProductAllInfo() {}
	
	public ProductAllInfo(String checkIn, String checkOut, long difDay, Object item, String itemCp, int packageNo) {
		super();
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.difDay = difDay;
		this.item = item;
		this.itemCp = itemCp;
		this.packageNo = packageNo;
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

	public long getDifDay() {
		return difDay;
	}

	public void setDifDay(long difDay) {
		this.difDay = difDay;
	}

	public Object getItem() {
		return item;
	}

	public void setItem(Object item) {
		this.item = item;
	}

	public String getItemCp() {
		return itemCp;
	}

	public void setItemCp(String itemCp) {
		this.itemCp = itemCp;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
