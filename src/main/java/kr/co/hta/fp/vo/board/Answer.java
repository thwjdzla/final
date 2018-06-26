package kr.co.hta.fp.vo.board;

import java.util.Date;

public class Answer {
	
	private int no;
	private String contents;
	private int questionNo;
	private Date createDate;
	private int cpNo;
	
	public Answer() {
		
	}
	
	public Answer(int no, String contents, int questionNo, Date createDate, int cpNo) {
		super();
		this.no = no;
		this.contents = contents;
		this.questionNo = questionNo;
		this.createDate = createDate;
		this.cpNo = cpNo;
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
		return contents.replaceAll("\n", "<br/>");
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getQuestionNo() {
		return questionNo;
	}

	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getCpNo() {
		return cpNo;
	}

	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}

	@Override
	public String toString() {
		return "Answer [no=" + no + ", contents=" + contents + ", questionNo=" + questionNo + ", createDate="
				+ createDate + ", cpNo=" + cpNo + "]";
	}
	
	
}
