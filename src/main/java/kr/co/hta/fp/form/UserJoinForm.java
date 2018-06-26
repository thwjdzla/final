package kr.co.hta.fp.form;

import java.util.Date;

public class UserJoinForm {

	private int no;
	private String id;
	private String pwd;
	private String emailid;
	private String emailDomain;
	private String type;
	private String nameLast;
	private String nameFirst;
	private String sexcode;
	private String telno1;
	private String telno2;
	private String telno3;
	private String birthdayyy;
	private String birthdaymt;
	private String birthdayde;
	private String zip;
	private String address1;
	private String address2;
	private String emailreceipt;
	private String smsreceipt;
	private Date createDate;
	
	public UserJoinForm() {
		
	}

	public UserJoinForm(int no, String id, String pwd, String emailid, String emailDomain, String type, String nameLast,
			String nameFirst, String sexcode, String telno1, String telno2, String telno3, String birthdayyy,
			String birthdaymt, String birthdayde, String zip, String address1, String address2, String emailreceipt,
			String smsreceipt, Date createDate) {
		super();
		this.no = no;
		this.id = id;
		this.pwd = pwd;
		this.emailid = emailid;
		this.emailDomain = emailDomain;
		this.type = type;
		this.nameLast = nameLast;
		this.nameFirst = nameFirst;
		this.sexcode = sexcode;
		this.telno1 = telno1;
		this.telno2 = telno2;
		this.telno3 = telno3;
		this.birthdayyy = birthdayyy;
		this.birthdaymt = birthdaymt;
		this.birthdayde = birthdayde;
		this.zip = zip;
		this.address1 = address1;
		this.address2 = address2;
		this.emailreceipt = emailreceipt;
		this.smsreceipt = smsreceipt;
		this.createDate = createDate;
	}

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

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getEmailDomain() {
		return emailDomain;
	}

	public void setEmailDomain(String emailDomain) {
		this.emailDomain = emailDomain;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getNameLast() {
		return nameLast;
	}

	public void setNameLast(String nameLast) {
		this.nameLast = nameLast;
	}

	public String getNameFirst() {
		return nameFirst;
	}

	public void setNameFirst(String nameFirst) {
		this.nameFirst = nameFirst;
	}

	public String getSexcode() {
		return sexcode;
	}

	public void setSexcode(String sexcode) {
		this.sexcode = sexcode;
	}

	public String getTelno1() {
		return telno1;
	}

	public void setTelno1(String telno1) {
		this.telno1 = telno1;
	}

	public String getTelno2() {
		return telno2;
	}

	public void setTelno2(String telno2) {
		this.telno2 = telno2;
	}

	public String getTelno3() {
		return telno3;
	}

	public void setTelno3(String telno3) {
		this.telno3 = telno3;
	}

	public String getBirthdayyy() {
		return birthdayyy;
	}

	public void setBirthdayyy(String birthdayyy) {
		this.birthdayyy = birthdayyy;
	}

	public String getBirthdaymt() {
		return birthdaymt;
	}

	public void setBirthdaymt(String birthdaymt) {
		this.birthdaymt = birthdaymt;
	}

	public String getBirthdayde() {
		return birthdayde;
	}

	public void setBirthdayde(String birthdayde) {
		this.birthdayde = birthdayde;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "UserJoinForm [no=" + no + ", id=" + id + ", pwd=" + pwd + ", emailid=" + emailid + ", emailDomain="
				+ emailDomain + ", type=" + type + ", nameLast=" + nameLast + ", nameFirst=" + nameFirst + ", sexcode="
				+ sexcode + ", telno1=" + telno1 + ", telno2=" + telno2 + ", telno3=" + telno3 + ", birthdayyy="
				+ birthdayyy + ", birthdaymt=" + birthdaymt + ", birthdayde=" + birthdayde + ", zip=" + zip
				+ ", address1=" + address1 + ", address2=" + address2 + ", emailreceipt=" + emailreceipt
				+ ", smsreceipt=" + smsreceipt + ", createDate=" + createDate + "]";
	}

	
}
