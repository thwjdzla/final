package kr.co.hta.fp.vo.concert;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Concert {
	
	private int ccNo;
	private String ccName;
	private String ccLocationlat;
	private String ccLocationlng;
	private int ccCount;
	private String ccContents;
	private int cpNo;
	private String ccImg;
	private Date ccStartDate;
	private Date ccEndDate;
	private String ccTel;
	private String ccPhone;
	private String ccOwner;
	private String ccAddress;
	private String ccDetailAddress;
	private String star;
	private List<ConcertItem> items;
	
	
	
	public List<ConcertItem> getItems() {
		return items;
	}

	public void setItems(List<ConcertItem> items) {
		this.items = items;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public Concert() {
		
	}

	public Concert(int ccNo, String ccName, String ccLocationlat, String ccLocationlng, int ccCount, String ccContents, int cpNo, String ccImg,
			Date ccStartDate, Date ccEndDate) {
		super();
		this.ccNo = ccNo;
		this.ccName = ccName;
		this.ccLocationlat = ccLocationlat;
		this.ccLocationlng = ccLocationlng;
		this.ccCount = ccCount;
		this.ccContents = ccContents;
		this.cpNo = cpNo;
		this.ccImg = ccImg;
		this.ccStartDate = ccStartDate;
		this.ccEndDate = ccEndDate;
	}

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public String getCcTel() {
		return ccTel;
	}

	public void setCcTel(String ccTel) {
		this.ccTel = ccTel;
	}

	public String getCcPhone() {
		return ccPhone;
	}

	public void setCcPhone(String ccPhone) {
		this.ccPhone = ccPhone;
	}

	public String getCcOwner() {
		return ccOwner;
	}

	public void setCcOwner(String ccOwner) {
		this.ccOwner = ccOwner;
	}

	public String getCcAddress() {
		return ccAddress;
	}

	public void setCcAddress(String ccAddress) {
		this.ccAddress = ccAddress;
	}

	public String getCcDetailAddress() {
		return ccDetailAddress;
	}

	public void setCcDetailAddress(String ccDetailAddress) {
		this.ccDetailAddress = ccDetailAddress;
	}

	public int getCcNo() {
		return ccNo;
	}
	public int getNo() {
		return ccNo;
	}

	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}

	public String getName() {
		return ccName;
	}
	public String getCcName() {
		return ccName;
	}

	public void setCcName(String ccName) {
		this.ccName = ccName;
	}


	public String getCcLocationlat() {
		return ccLocationlat;
	}

	public void setCcLocationlat(String ccLocationlat) {
		this.ccLocationlat = ccLocationlat;
	}

	public String getCcLocationlng() {
		return ccLocationlng;
	}

	public void setCcLocationlng(String ccLocationlng) {
		this.ccLocationlng = ccLocationlng;
	}

	public int getCcCount() {
		return ccCount;
	}

	public void setCcCount(int ccCount) {
		this.ccCount = ccCount;
	}

	public String getCcContents() {
		return ccContents;
	}
	public String getcontents() {
		return ccContents;
	}

	public void setCcContents(String ccContents) {
		this.ccContents = ccContents;
	}
	public void setcontents(String ccContents) {
		this.ccContents = ccContents;
	}

	public int getCpNo() {
		return cpNo;
	}

	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}

	public String getCcImg() {
		return ccImg;
	}
	public String getImg() {
		return ccImg;
	}

	public void setCcImg(String ccImg) {
		this.ccImg = ccImg;
	}

	public Date getCcStartDate() {
		return ccStartDate;
	}

	public void setCcStartDate(Date ccStartDate) {
		this.ccStartDate = ccStartDate;
	}

	public Date getCcEndDate() {
		return ccEndDate;
	}

	public void setCcEndDate(Date ccEndDate) {
		this.ccEndDate = ccEndDate;
	}
	
	public String getFmtStartDate() {
		if(ccStartDate == null) {
			return "";
		}
		return sdf.format(ccStartDate);
	}
	
	public String getFmtEndDate() {
		if(ccEndDate == null) {
			return "";
		}
		return sdf.format(ccEndDate);
	}

	@Override
	public String toString() {
		return "Concert [ccNo=" + ccNo + ", ccName=" + ccName + ", ccLocationlat=" + ccLocationlat + ", ccLocationlng="
				+ ccLocationlng + ", ccCount=" + ccCount + ", ccContents=" + ccContents + ", cpNo=" + cpNo + ", ccImg="
				+ ccImg + ", ccStartDate=" + ccStartDate + ", ccEndDate=" + ccEndDate + ", ccTel=" + ccTel
				+ ", ccPhone=" + ccPhone + ", ccOwner=" + ccOwner + ", ccAddress=" + ccAddress + ", ccDetailAddress="
				+ ccDetailAddress + "]";
	}

}
