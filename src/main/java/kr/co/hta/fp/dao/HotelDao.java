package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.vo.DaumMap;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;

public interface HotelDao {
	Hotel searchHotelByNo(int no);
	Hotel searchHotelByHno(int no);
	void submitByHotel(Hotel hotel);
	List<Hotel> getHotelRegisteredList(int userNo);
	Hotel searchHotelList();
	List<Hotel> selectrecentHotel();
	List<Hotel> searchAllHotelList();
	
	
	
	List<DaumMap> searchhotelall(Map<String, Double> map);
	
	void updateHotel(Hotel hotel);
	
	List<Hotel> searchByname(String searchKeyword);
}
