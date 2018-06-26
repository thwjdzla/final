package kr.co.hta.fp.form;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class QuestionForm {
	
	private int no;
	private String title;
	private String type;
	private String contents;
	private int userNo;
	private Date createDate;
	private int cpNo;
	private MultipartFile upfile;
	private String img;
	private String status;
	private String cpName;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public QuestionForm() {
		
	}
	
	public QuestionForm(int no, String title, String type, String contents, int userNo, Date createDate, int cpNo,
			MultipartFile upfile, String img, String status, String cpName) {
		super();
		this.no = no;
		this.title = title;
		this.type = type;
		this.contents = contents;
		this.userNo = userNo;
		this.createDate = createDate;
		this.cpNo = cpNo;
		this.upfile = upfile;
		this.img = img;
		this.status = status;
		this.cpName = cpName;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContents() {
		return contents;
	}

	public String getContentsWithBr() {
		if (contents == null) {
			return "";
		}
		return contents.replaceAll("\n", "<br/>");
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	
	public int getCpNo() {
		return cpNo;
	}

	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}

	public MultipartFile getUpfile() {
		return upfile;
	}

	public void setUpfile(MultipartFile upfile) {
		this.upfile = upfile;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCpName() {
		return cpName;
	}

	public void setCpName(String cpName) {
		this.cpName = cpName;
	}

	@Override
	public String toString() {
		return "QuestionForm [no=" + no + ", title=" + title + ", type=" + type + ", contents=" + contents + ", userNo="
				+ userNo + ", createDate=" + createDate + ", cpNo=" + cpNo + ", upfile=" + upfile + ", img=" + img
				+ ", status=" + status + ", cpName=" + cpName + "]";
	}
	
	
	
}
