package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.Company;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;

@Transactional
public interface IntroductionService {
	Hotel searchHotelByNo(int no);
	Concert searchConcertByNo(int no);
	Resort searchResortByNo(int no);
	Hotel searchHotelByHno(int no);
	Concert searchConcertByCno(int no);
	Resort searchResortByRno(int no);
	void submitByHotel(Hotel hotel, int no);
	void submitByResort(Resort resort, int no);
	void submitByConcert(Concert concert, int no);
	List<Hotel> selectrecentHotel();
	List<Resort> selectrecentResort();
	List<Concert> selectrecentConcert();
	Company getCompanyByCpNo(int no);
	void updateHotel(Hotel hotel);
	void updateResort(Resort resort);
	void updateConcert(Concert concert);
	void deleteCompany(int no);
}
