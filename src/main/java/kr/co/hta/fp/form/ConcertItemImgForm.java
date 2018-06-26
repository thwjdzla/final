package kr.co.hta.fp.form;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ConcertItemImgForm {

	private int no;
	private int cpNo;
	private int ccNo;
	private String name;
	private List<Integer> price;
	private List<Integer> Qty;
	private List<MultipartFile> Img;
	private String startDate;
	private String endDate;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCcNo() {
		return ccNo;
	}
	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public List<Integer> getPrice() {
		return price;
	}
	public void setPrice(List<Integer> price) {
		this.price = price;
	}
	public List<Integer> getQty() {
		return Qty;
	}
	public void setQty(List<Integer> qty) {
		Qty = qty;
	}
	public List<MultipartFile> getImg() {
		return Img;
	}
	public void setImg(List<MultipartFile> img) {
		Img = img;
	}

}
