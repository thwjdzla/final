package kr.co.hta.fp.vo.hotel;

public class HotelItemOption {

	private String name;
	private int no;
	
	public HotelItemOption() {
		
	}
	
	public HotelItemOption(String name, int no) {
		super();
		this.name = name;
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	@Override
	public String toString() {
		return "HotelItemOption [name=" + name + ", no=" + no + "]";
	}
	
}
