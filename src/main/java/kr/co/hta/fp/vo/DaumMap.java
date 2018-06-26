package kr.co.hta.fp.vo;

public class DaumMap {
	
	String name;
	double lag;
	double lon;
	String img;
	String type;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLag() {
		return lag;
	}
	public void setLag(double lag) {
		this.lag = lag;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
	@Override
	public String toString() {
		return "SearchAll [name=" + name + ", lag=" + lag + ", lon=" + lon + ", img=" + img + "]";
	}
	
	
}
