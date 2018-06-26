package kr.co.hta.fp.vo.board;

public class FAQ {

	private int no;
	private String type;
	private String title;
	private String contents;
	
	public FAQ() {}
	
	public FAQ(int no, String type, String title, String contents) {
		super();
		this.no = no;
		this.type = type;
		this.title = title;
		this.contents = contents;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	@Override
	public String toString() {
		return "FAQ [no=" + no + ", type=" + type + ", title=" + title + ", contents=" + contents + "]";
	}
	
	
}
