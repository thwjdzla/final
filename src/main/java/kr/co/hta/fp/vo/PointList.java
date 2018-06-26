package kr.co.hta.fp.vo;

public class PointList {
	private int reserveNo;
	private String reserveDate;
	private int userNo;
	private int usePoint;
	private int stackPoint;
	private String packageName;
	private int count;
	
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
	public int getStackPoint() {
		return stackPoint;
	}
	public void setStackPoint(int stackPoint) {
		this.stackPoint = stackPoint;
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
	@Override
	public String toString() {
		return "PointList [reserveNo=" + reserveNo + ", reserveDate=" + reserveDate + ", userNo=" + userNo
				+ ", usePoint=" + usePoint + ", stackPoint=" + stackPoint + ", packageName=" + packageName + ", count="
				+ count + "]";
	}
	
}
