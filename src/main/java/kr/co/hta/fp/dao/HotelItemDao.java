package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.form.HotelItemForm;
import kr.co.hta.fp.form.ItemForm;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.hotel.HotelItemOption;


public interface HotelItemDao {

	List<HotelItemForm> getHotelItemList(int userNo);
	void addHotelItem(HotelItem hotelItem);
	void addHotelItemOption(HotelItemOption hotelItemOption);
	List<HotelItemOption> getHotelItemOptions(int hiNo);
	HotelItem getHotelItemByNo(int no);
	List<ItemForm> getHotelItemsByNo(int no);
	int getHotelItemQty(int no);
	List<HotelItem> getHotelItemsByCpNo(int no);
	List<HotelItem> AllHotelItemName();
	List<HotelItem> AllHotelItemType();
	void updateHotelItemCount(Map<String, Object> map);
	void delHotelItem(int no);
	int hotelItemSeq();
	void updateHotelItem(HotelItem hotelItem);
	void deleteHotelItemOption(int no);
}
