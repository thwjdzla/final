package kr.co.hta.fp.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class User {

	private int no;
	private String id;
	private String pwd;
	private String email;
	private String type;
	private String name;
	private String sexcode;
	private String phone;
	private String birthday;
	private String zip;
	private String address;
	private String emailreceipt;
	private String smsreceipt;
	private String status;
	private int totalPrice;
	private int totalPoint;
	private Date createDate;
	
	public User() {
		
	}

	public User(int no, String id, String pwd, String email, String type, String name, String sexcode, String phone,
			String birthday, String zip, String address, String emailreceipt, String smsreceipt, String status,
			int totalPrice, int totalPoint, Date createDate) {
		super();
		this.no = no;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.type = type;
		this.name = name;
		this.sexcode = sexcode;
		this.phone = phone;
		this.birthday = birthday;
		this.zip = zip;
		this.address = address;
		this.emailreceipt = emailreceipt;
		this.smsreceipt = smsreceipt;
		this.status = status;
		this.totalPrice = totalPrice;
		this.totalPoint = totalPoint;
		this.createDate = createDate;
	}
	
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSexcode() {
		return sexcode;
	}

	public void setSexcode(String sexcode) {
		this.sexcode = sexcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmailreceipt() {
		return emailreceipt;
	}

	public void setEmailreceipt(String emailreceipt) {
		this.emailreceipt = emailreceipt;
	}

	public String getSmsreceipt() {
		return smsreceipt;
	}

	public void setSmsreceipt(String smsreceipt) {
		this.smsreceipt = smsreceipt;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getTotalPoint() {
		return totalPoint;
	}

	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
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

	@Override
	public String toString() {
		return "User [no=" + no + ", id=" + id + ", pwd=" + pwd + ", email=" + email + ", type=" + type + ", name="
				+ name + ", sexcode=" + sexcode + ", phone=" + phone + ", birthday=" + birthday + ", zip=" + zip
				+ ", address=" + address + ", emailreceipt=" + emailreceipt + ", smsreceipt=" + smsreceipt + ", status="
				+ status + ", totalPrice=" + totalPrice + ", totalPoint=" + totalPoint + ", createDate=" + createDate
				+ "]";
	}

}
