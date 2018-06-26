package kr.co.hta.fp.vo;

import java.util.Date;
import java.util.List;

import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.resort.Resort;

public class Package {

	private int packageNo;
	private String packageName;
	private int rate;
	private int count;
	private Integer hotelNo;
	private Date startDate;
	private Date endDate;
	private Integer resortNo;
	private Integer concertNo;
	private Integer prNo;
	private Integer paNo; 
	private String status;
	private int userNo;
	private Hotel hotelitem;
	private Concert concertitem;
	private Resort resortitem;
	
	

	
	public Hotel getHotelitem() {
		return hotelitem;
	}
	public void setHotelitem(Hotel hotelitem) {
		this.hotelitem = hotelitem;
	}
	public Concert getConcertitem() {
		return concertitem;
	}
	public void setConcertitem(Concert concertitem) {
		this.concertitem = concertitem;
	}
	public Resort getResortitem() {
		return resortitem;
	}
	public void setResortitem(Resort resortitem) {
		this.resortitem = resortitem;
	}
	
	
	
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public Integer getPaNo() {
		return paNo;
	}
	public void setPaNo(Integer paNo) {
		this.paNo = paNo;
	}
	public int getPackageNo() {
		return packageNo;
	}
	public void setPackageNo(int packageNo) {
		this.packageNo = packageNo;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Integer getHotelNo() {
		return hotelNo;
	}
	public void setHotelNo(Integer hotelNo) {
		this.hotelNo = hotelNo;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Integer getResortNo() {
		return resortNo;
	}
	public void setResortNo(Integer resortNo) {
		this.resortNo = resortNo;
	}
	public Integer getConcertNo() {
		return concertNo;
	}
	public void setConcertNo(Integer concertNo) {
		this.concertNo = concertNo;
	}
	public Integer getPrNo() {
		return prNo;
	}
	public void setPrNo(Integer prNo) {
		this.prNo = prNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Package [packageNo=" + packageNo + ", packageName=" + packageName + ", rate=" + rate + ", count="
				+ count + ", hotelNo=" + hotelNo + ", startDate=" + startDate + ", endDate=" + endDate + ", resortNo="
				+ resortNo + ", concertNo=" + concertNo + ", prNo=" + prNo + ", paNo=" + paNo + ", status=" + status
				+ ", userNo=" + userNo + "]";
	}
}
