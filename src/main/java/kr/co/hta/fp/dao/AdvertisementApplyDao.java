package kr.co.hta.fp.dao;

import java.util.List;

import kr.co.hta.fp.vo.AdvertisementApply;

public interface AdvertisementApplyDao {
	void insertAdvertisementApply(AdvertisementApply ad);
	void deleteAdvertisementApply(int no);
	List<AdvertisementApply> selectAdvertisementApply();
}
