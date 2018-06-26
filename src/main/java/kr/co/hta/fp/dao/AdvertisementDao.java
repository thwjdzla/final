package kr.co.hta.fp.dao;

import kr.co.hta.fp.vo.Advertisement;

public interface AdvertisementDao {
	void insertAdvertisement(Advertisement ad);
	void deleteAdvertisement(String status);
	Advertisement selectAdvertisement(String status);
}
