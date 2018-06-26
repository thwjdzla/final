package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.AdvertisementApplyDao;
import kr.co.hta.fp.vo.AdvertisementApply;

@Service
public class AdvertisementApplyServiceImpl implements AdvertisementApplyService{
	@Autowired
	private AdvertisementApplyDao advertisementApplyDao;
	@Override
	public void deleteAdvertisementApply(int no) {
		advertisementApplyDao.deleteAdvertisementApply(no);
	}
	@Override
	public void insertAdvertisementApply(AdvertisementApply ad) {
		advertisementApplyDao.insertAdvertisementApply(ad);
	}
	@Override
	public List<AdvertisementApply> selectAdvertisementApply() {
		return advertisementApplyDao.selectAdvertisementApply();
	}
}
