package kr.co.hta.fp.vo.board;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class AdminQuestion {

	private int no;
	private String title;
	private String contents;
	private String type;
	private Date createDate;
	private int userNo;
	private String img;
	MultipartFile upfile;
	private String status;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public AdminQuestion() {
		
	}

	public AdminQuestion(int no, String title, String contents, String type, Date createDate, int userNo, String img,
			MultipartFile upfile, String status) {
		super();
		this.no = no;
		this.title = title;
		this.contents = contents;
		this.type = type;
		this.createDate = createDate;
		this.userNo = userNo;
		this.img = img;
		this.upfile = upfile;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public MultipartFile getUpfile() {
		return upfile;
	}

	public void setUpfile(MultipartFile upfile) {
		this.upfile = upfile;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "AdminQuestion [no=" + no + ", title=" + title + ", contents=" + contents + ", type=" + type
				+ ", createDate=" + createDate + ", userNo=" + userNo + ", img=" + img + ", upfile=" + upfile
				+ ", status=" + status + "]";
	}
	
}
