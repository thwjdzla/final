package kr.co.hta.fp.form;

import org.springframework.web.multipart.MultipartFile;

public class AdvertisementForm {
	public int no;
	public MultipartFile image;
	public String link;
	public String status;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
