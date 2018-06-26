package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.ConcertDao;
import kr.co.hta.fp.dao.ConcertItemDao;
import kr.co.hta.fp.dao.HotelDao;
import kr.co.hta.fp.dao.HotelItemDao;
import kr.co.hta.fp.dao.PackageDao;
import kr.co.hta.fp.dao.ResortDao;
import kr.co.hta.fp.dao.ResortItemDao;
import kr.co.hta.fp.vo.DaumMap;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;
import kr.co.hta.fp.vo.resort.ResortItem;

@Service
public class SearchServiceImpl implements SearchService{
	@Autowired
	private HotelDao hotelDao;
	@Autowired
	private ConcertDao concertDao;
	@Autowired
	private ResortDao resortDao;
	@Autowired
	private PackageDao packageDao;
	
	
	@Autowired
	private HotelItemDao hotelitemdao;
	@Autowired
	private ConcertItemDao concertitemdao;
	@Autowired
	private ResortItemDao resortitemdao;

	

	
	@Override
	public List<Hotel> searchAllHotelList() {
		return hotelDao.searchAllHotelList();
	}

	@Override
	public List<Concert> searchAllConcertList() {
		return concertDao.searchAllConcertList();
	}

	@Override
	public List<Resort> searchAllResortList() {
		return resortDao.searchAllResortList();
	}
	
	
//==============================================
	
	@Override
	public List<HotelItem> searchAllHotelItemList(int no) {
		return hotelitemdao.getHotelItemsByCpNo(no);
	}

	@Override
	public List<ConcertItem> searchAllConcertItemList(int no) {
		return concertitemdao.getConcertItemsByCpNo(no);
	}

	@Override
	public List<ResortItem> searchAllResortItemList(int no) {
		return resortitemdao.getResortItemByCpNo(no);
	}

	
//==============================================
	
	@Override
	public List<DaumMap> searchhotelall(Map<String, Double> map) {
		return hotelDao.searchhotelall(map);
	}
	@Override
	public List<DaumMap> searchconcertall(Map<String, Double> map) {
		return concertDao.searchconcertall(map);
	}
	@Override
	public List<DaumMap> searchresortall(Map<String, Double> map) {
		return resortDao.searchresortall(map);
	}

	
	
	@Override
	public List<Package> searchpackageall() {
		return packageDao.searchpackageall();
	}

	@Override
	public Hotel searchHotelByno(int no) {
		return hotelDao.searchHotelByNo(no);
	}

	@Override
	public Concert searchConcertByno(int no) {
		return concertDao.searchConcertByNo(no);
	}

	@Override
	public Resort searchResortByno(int no) {
		return resortDao.searchResortByRno(no);
	}

	
	
	
	@Override
	public List<Hotel> searchHotelByname(String searchkeyword) {
		return hotelDao.searchByname(searchkeyword);
	}

	@Override
	public List<Concert> searchConcertByname(String searchkeyword) {
		return concertDao.searchByname(searchkeyword);
	}

	@Override
	public List<Resort> searchResortByname(String searchkeyword) {
		return resortDao.searchByname(searchkeyword);
	}
	
	@Override
	public List<Package> searchPackageByname(String searchkeyword) {
		return packageDao.searchPackageByname(searchkeyword);
	}

	
	
	
	
	
	
	
	@Override
	public HotelItem searchHotelItem(int no) {
		return hotelitemdao.getHotelItemByNo(no);
	}

	@Override
	public ConcertItem searchConcertItem(int no) {
		return concertitemdao.getConcertItemByNo(no);
	}

	@Override
	public ResortItem searchResortItem(int no) {
		return resortitemdao.getResortItemByNo(no);
	}

	@Override
	public Hotel searchHotelByHno(int no) {
		return hotelDao.searchHotelByHno(no);
	}
	
	@Override
	public Concert searchConcertByCno(int no) {
		return concertDao.searchConcertByCno(no); 
	}
	
	@Override
	public Resort searchResortByRno(int no) {
		return resortDao.searchResortByRno(no); 
	}
}
