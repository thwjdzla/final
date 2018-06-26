package kr.co.hta.fp.vo;

public class Membership {

	private String grade;
	private int rate;
	private int pointRate;
	private int userNo;
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getPointRate() {
		return pointRate;
	}
	public void setPointRate(int pointRate) {
		this.pointRate = pointRate;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	@Override
	public String toString() {
		return "Membership [grade=" + grade + ", rate=" + rate + ", pointRate=" + pointRate + ", userNo=" + userNo
				+ "]";
	}
	
}
