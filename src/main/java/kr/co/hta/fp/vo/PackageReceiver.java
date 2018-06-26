package kr.co.hta.fp.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class PackageReceiver {

	private int no;
	private int userNo;
	private String userId;
	private Integer hotelItemNo;
	private Integer concertItemNo;
	private Integer resortItemNo;
	private int paNo;
	private Date createDate;
	private String status;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public Integer getHotelItemNo() {
		return hotelItemNo;
	}
	public void setHotelItemNo(Integer hotelItemNo) {
		this.hotelItemNo = hotelItemNo;
	}
	public Integer getConcertItemNo() {
		return concertItemNo;
	}
	public void setConcertItemNo(Integer concertItemNo) {
		this.concertItemNo = concertItemNo;
	}
	public Integer getResortItemNo() {
		return resortItemNo;
	}
	public void setResortItemNo(Integer resortItemNo) {
		this.resortItemNo = resortItemNo;
	}
	public int getPaNo() {
		return paNo;
	}
	public void setPaNo(int paNo) {
		this.paNo = paNo;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getFmtCreateDate() {
		if (createDate == null) {
			return "";
		}
		return sdf.format(createDate);
	}
	@Override
	public String toString() {
		return "PackageReceiver [no=" + no + ", userNo=" + userNo + ", userId=" + userId + ", hotelItemNo="
				+ hotelItemNo + ", concertItemNo=" + concertItemNo + ", resortItemNo=" + resortItemNo + ", paNo=" + paNo
				+ ", createDate=" + createDate + ", status=" + status + "]";
	}
}
