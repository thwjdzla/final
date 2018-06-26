package kr.co.hta.fp.form;

import java.util.Arrays;

public class PayInfo {

	private int stackPoint;
	private int usePoint;
	private boolean reserveHistory;
	private String[] userPhone;
	
	public int getStackPoint() {
		return stackPoint;
	}
	public void setStackPoint(int stackPoint) {
		this.stackPoint = stackPoint;
	}
	public int getUsePoint() {
		return usePoint;
	}
	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}
	public boolean isReserveHistory() {
		return reserveHistory;
	}
	public void setReserveHistory(boolean reserveHistory) {
		this.reserveHistory = reserveHistory;
	}
	public String[] getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String[] userPhone) {
		this.userPhone = userPhone;
	}
	
	@Override
	public String toString() {
		return "payInfo [stackPoint=" + stackPoint + ", usePoint=" + usePoint + ", reserveHistory=" + reserveHistory
				+ ", userPhone=" + Arrays.toString(userPhone) + "]";
	}
	
}
