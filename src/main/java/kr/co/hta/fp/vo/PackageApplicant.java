package kr.co.hta.fp.vo;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.resort.Resort;

public class PackageApplicant {

	private int no;
	private String userId;
	private String title;
	private String content;
	private int userNo;
	private Date startDate;
	private Date endDate;
	private int packageCount;
	private int dfboc;
	private Integer hotelItemNo;
	private Integer concertItemNo;
	private Integer resortItemNo;
	private Date createDate;
	private double packageRate;
	private Integer ruNo;
	private String status;
	
	private String prStatus;
	
	
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private static DecimalFormat df = new DecimalFormat("#,###");
	
	public String getPrStatus() {
		return prStatus;
	}
	public void setPrStatus(String prStatus) {
		this.prStatus = prStatus;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	public int getPackageCount() {
		return packageCount;
	}
	public void setPackageCount(int packageCount) {
		this.packageCount = packageCount;
	}
	public int getDfboc() {
		return dfboc;
	}
	public void setDfboc(int dfboc) {
		this.dfboc = dfboc;
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
	public void setRuNo(Integer ruNo) {
		this.ruNo = ruNo;
	}
	public Integer getRuNo() {
		return ruNo;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public double getPackageRate() {
		return packageRate;
	}
	public void setPackageRate(double packageRate) {
		this.packageRate = packageRate;
	}
	public String getFmtCreateDate() {
		if (createDate == null) {
			return "";
		}
		return sdf.format(createDate);
	}
	public String getSimpleStartDate() {
		if(startDate == null) {
			return "";
		}
		return sdf.format(startDate);
	}
	public String getSimpleEndDate() {
		if(endDate == null) {
			return "";
		}
		return sdf.format(endDate);
	}
	public String getDfbocFormat() {
		if(dfboc == 0) {
			return "";
		}
		return df.format(dfboc);
	}
	public String getPackageCountFormat() {
		if (packageCount == 0) {
			return "";
		}
		return df.format(packageCount);
	}
	@Override
	public String toString() {
		return "PackageApplicant [no=" + no + ", userId=" + userId + ", title=" + title + ", content=" + content
				+ ", userNo=" + userNo + ", startDate=" + startDate + ", endDate=" + endDate + ", packageCount="
				+ packageCount + ", dfboc=" + dfboc + ", hotelItemNo=" + hotelItemNo + ", concertItemNo="
				+ concertItemNo + ", resortItemNo=" + resortItemNo + ", createDate=" + createDate + ", packageRate="
				+ packageRate + ", ruNo=" + ruNo + ", status=" + status + ", prStatus=" + prStatus + "]";
	}
}
