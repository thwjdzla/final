package kr.co.hta.fp.service;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.Advertisement;

@Transactional
public interface AdvertisementService {
	public void insertAdvertisement(Advertisement ad);
	public Advertisement selectAdvertisement(String status);
	public void deleteAdvertisement(String status);
}
