package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.AdvertisementApply;

@Transactional
public interface AdvertisementApplyService {
	void insertAdvertisementApply(AdvertisementApply ad);
	void deleteAdvertisementApply(int no);
	List<AdvertisementApply> selectAdvertisementApply();
}
