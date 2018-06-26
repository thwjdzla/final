package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.vo.DaumMap;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;

public interface ConcertDao {

	List<Concert> getConcertRegisteredList(int userNo);
	Concert searchConcertByNo(int no);
	Concert searchConcertByCno(int no);
	void submitByConcert(Concert concert);
	List<Concert> selectrecentConcert();

	List<Concert> searchAllConcertList();
	List<DaumMap> searchconcertall(Map<String, Double> map);
	

	void updateConcert(Concert concert);

	List<Concert> searchByname(String searchKeyword);
}
