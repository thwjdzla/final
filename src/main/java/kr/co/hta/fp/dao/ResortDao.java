package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.vo.DaumMap;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.resort.Resort;

public interface ResortDao {
	Resort searchResortByNo(int no);
	Resort searchResortByRno(int no);
	List<Resort> getResortRegisteredList(int userNo);
	void submitByResort(Resort resort);
	List<Resort> selectrecentResort();

	List<Resort> searchAllResortList();
	
	List<DaumMap> searchresortall(Map<String, Double> map);

	void updateResort(Resort resort);

	List<Resort> searchByname(String searchKeyword);
}
