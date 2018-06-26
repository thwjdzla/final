package kr.co.hta.fp.form;

import java.util.Date;

import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;
import kr.co.hta.fp.vo.resort.ResortItem;

public class PackageForm {
	private int no;
	private String name;
	private int rate;
	private int count;
	private String startDate;
	private String endDate;
	
	private Hotel hotel;
	private Resort resort;
	private Concert concert;
	private HotelItem hotelItem;
	private ResortItem resortItem;
	private ConcertItem concertItem;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}

	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}	
	public HotelItem getHotelItem() {
		return hotelItem;
	}
	public void setHotelItem(HotelItem hotelItem) {
		this.hotelItem = hotelItem;
	}
	public Resort getResort() {
		return resort;
	}
	public void setResort(Resort resort) {
		this.resort = resort;
	}
	public Concert getConcert() {
		return concert;
	}
	public void setConcert(Concert concert) {
		this.concert = concert;
	}
	public ResortItem getResortItem() {
		return resortItem;
	}
	public void setResortItem(ResortItem resortItem) {
		this.resortItem = resortItem;
	}
	public ConcertItem getConcertItem() {
		return concertItem;
	}
	public void setConcertItem(ConcertItem concertItem) {
		this.concertItem = concertItem;
	}
	@Override
	public String toString() {
		return "PackageForm [no=" + no + ", name=" + name + ", rate=" + rate + ", count=" + count + ", startDate="
				+ startDate + ", endDate=" + endDate + ", hotel=" + hotel + ", resort=" + resort + ", concert="
				+ concert + ", hotelItem=" + hotelItem + ", resortItem=" + resortItem + ", consertItem=" + concertItem
				+ "]";
	}

}
