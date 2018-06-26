package kr.co.hta.fp.vo.board;

import java.util.Date;

public class AdminAnswer {

	private int no;
	private String contents;
	private Date createDate;
	private int questionNo;
	
	public AdminAnswer() {
		
	}

	public AdminAnswer(int no, String contents, Date createDate, int questionNo) {
		super();
		this.no = no;
		this.contents = contents;
		this.createDate = createDate;
		this.questionNo = questionNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getContents() {
		return contents;
	}

	public String getContentsWithBr() {
		if (contents == null) {
			return "";
		}
		return contents.replace("\n", "<br/>");
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getQuestionNo() {
		return questionNo;
	}

	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}

	@Override
	public String toString() {
		return "AdminAnswer [no=" + no + ", contents=" + contents + ", createDate=" + createDate + ", questionNo="
				+ questionNo + "]";
	}
	
	
}
