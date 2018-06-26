package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.DaumMap;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;
import kr.co.hta.fp.vo.resort.ResortItem;

@Transactional
public interface SearchService {
	
	Hotel searchHotelByHno(int no);
	Concert searchConcertByCno(int no);
	Resort searchResortByRno(int no);
	

	List<Hotel> searchAllHotelList();
	List<Concert> searchAllConcertList();
	List<Resort> searchAllResortList();
	
	

	List<HotelItem> searchAllHotelItemList(int no);
	List<ConcertItem> searchAllConcertItemList(int no);
	List<ResortItem> searchAllResortItemList(int no);

	
	HotelItem searchHotelItem(int no);
	ConcertItem searchConcertItem(int no);
	ResortItem searchResortItem(int no);

	
	
	List<DaumMap> searchhotelall(Map<String, Double> map);
	List<DaumMap> searchconcertall(Map<String, Double> map);
	List<DaumMap> searchresortall(Map<String, Double> map);
	
	
	List<Package> searchpackageall();
	
	Hotel searchHotelByno(int no);
	Concert searchConcertByno(int no);
	Resort searchResortByno(int no);
	
	List<Hotel> searchHotelByname(String searchkeyword);
	List<Concert> searchConcertByname(String searchkeyword);
	List<Resort> searchResortByname(String searchkeyword);
	
	List<Package> searchPackageByname(String searchkeyword);
}
