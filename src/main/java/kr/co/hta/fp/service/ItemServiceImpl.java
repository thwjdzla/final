package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.ConcertItemDao;
import kr.co.hta.fp.dao.HotelItemDao;
import kr.co.hta.fp.dao.ResortItemDao;
import kr.co.hta.fp.form.ConcertItemForm;
import kr.co.hta.fp.form.HotelItemForm;
import kr.co.hta.fp.form.ItemForm;
import kr.co.hta.fp.form.ResortItemForm;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.hotel.HotelItemOption;
import kr.co.hta.fp.vo.resort.ResortItem;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private HotelItemDao hotelItemDao;
	@Autowired
	private ResortItemDao resortItemDao;
	@Autowired
	private ConcertItemDao concertItemDao;
	
	@Override
	public List<ConcertItemForm> getConcertItemList(int userNo) {
		return concertItemDao.getConcertItemList(userNo);
	}
	
	@Override
	public List<ResortItemForm> getResortItemList(int userNo) {
		return resortItemDao.getResortItemList(userNo);
	}
	
	@Override
	public List<HotelItemForm> getHotelItemList(int userNo) {
		
		List<HotelItemForm> list = hotelItemDao.getHotelItemList(userNo);
		for (HotelItemForm form : list) {
			List<HotelItemOption> options= hotelItemDao.getHotelItemOptions(form.getHiNo());
			form.setItemOptions(options);
		} 
		return list;
	
	}
	
	@Override
	public void addConcertItem(ConcertItem concertItem) {
		concertItemDao.addConcertItem(concertItem);
	}
	
	@Override
	public void addResortItem(ResortItem resortItem) {
		resortItemDao.addResortItem(resortItem);
	}
	
	@Override
	public void addHotelItem(HotelItem hotelItem) {
		System.out.println(hotelItem);
		hotelItemDao.addHotelItem(hotelItem);
		
		for (HotelItemOption option : hotelItem.getOptions() ) {
			hotelItemDao.addHotelItemOption(option);
		}
	}

	@Override
	public HotelItem getHotelItemByNo(int no) {
		return hotelItemDao.getHotelItemByNo(no);
	}

	@Override
	public ResortItem getResortItemByNo(int no) {
		return resortItemDao.getResortItemByNo(no);
	}

	@Override
	public ConcertItem getConcertItemByNo(int no) {
		return concertItemDao.getConcertItemByNo(no);
	}

	@Override
	public List<ItemForm> getHotelItemsByNo(int no) {
		return hotelItemDao.getHotelItemsByNo(no);
	}

	@Override
	public List<ItemForm> getConcertItemsByNo(int no) {
		return concertItemDao.getConcertItemsByNo(no);
	}

	@Override
	public List<ItemForm> getResortItemsByNo(int no) {
		return resortItemDao.getResortItemsByNo(no);
	}
	
	@Override
	public List<HotelItem> AllHotelItemName() {
		return hotelItemDao.AllHotelItemName();
	}
	
	@Override
	public List<HotelItem> AllHotelItemType() {
		return hotelItemDao.AllHotelItemType();
	}
	
	@Override
	public void delHotelItem(int no) {
		hotelItemDao.delHotelItem(no);
	}
	@Override
	public List<HotelItemOption> getHotelItemOptions(int no) {
		return hotelItemDao.getHotelItemOptions(no);
	}
	
	@Override
	public int hotelItemSeq() {
		return hotelItemDao.hotelItemSeq();
	}
	
	@Override
	public void delConcertItem(int no) {
		concertItemDao.delConcertItem(no);
	}
	
	@Override
	public void delResortItem(int no) {
		resortItemDao.delResortItem(no);
	}
	
	@Override
	public void updateHotelItem(HotelItem hotelItem) {
		hotelItemDao.updateHotelItem(hotelItem);
		
		for (HotelItemOption option : hotelItem.getOptions() ) {
			hotelItemDao.addHotelItemOption(option);
		}
	}
	@Override
	public void deleteHotelItemOption(int no) {
		hotelItemDao.deleteHotelItemOption(no);
	}
	@Override
	public List<ResortItem> allResortItemName() {
		return resortItemDao.allResortItemName();
	}
	@Override
	public void updateResortItem(ResortItem resortItem) {
		resortItemDao.updateResortItem(resortItem);
	}
	@Override
	public void updateConcertItem(ConcertItem concertItem) {
		concertItemDao.updateConcertItem(concertItem);
	}
}
