package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.form.ConcertItemForm;
import kr.co.hta.fp.form.HotelItemForm;
import kr.co.hta.fp.form.ItemForm;
import kr.co.hta.fp.form.ResortItemForm;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.hotel.HotelItemOption;
import kr.co.hta.fp.vo.resort.ResortItem;

@Transactional
public interface ItemService {

	List<ConcertItemForm> getConcertItemList(int userNo);
	List<ResortItemForm> getResortItemList(int userNo);
	List<HotelItemForm> getHotelItemList(int userNo);
	void addConcertItem(ConcertItem concertItem);
	void addResortItem(ResortItem resortItem);
	void addHotelItem(HotelItem hotelItem);
	HotelItem getHotelItemByNo(int no);
	ResortItem getResortItemByNo(int no);
	ConcertItem getConcertItemByNo(int no);
	List<ItemForm> getHotelItemsByNo(int no);
	List<ItemForm> getConcertItemsByNo(int no);
	List<ItemForm> getResortItemsByNo(int no);
	List<HotelItem> AllHotelItemName();
	List<HotelItem> AllHotelItemType();
	void delHotelItem(int no);
	void delConcertItem(int no);
	void delResortItem(int no);
	List<HotelItemOption> getHotelItemOptions(int no);
	int hotelItemSeq();
	void updateHotelItem(HotelItem hotelItem);
	void deleteHotelItemOption(int no);
	List<ResortItem> allResortItemName();
	void updateResortItem(ResortItem resortItem);
	void updateConcertItem(ConcertItem concertItem);
}
