package kr.co.hta.fp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.AdvertisementDao;
import kr.co.hta.fp.vo.Advertisement;

@Service
public class AdvertisementServiceImpl implements AdvertisementService{
	@Autowired
	private AdvertisementDao advertisementDao;
	@Override
	public void insertAdvertisement(Advertisement ad) {
		// TODO Auto-generated method stub
		advertisementDao.insertAdvertisement(ad);
	}
	
	 @Override
	public Advertisement selectAdvertisement(String status) {
		// TODO Auto-generated method stub
		return advertisementDao.selectAdvertisement(status);
	}
	
	@Override
	public void deleteAdvertisement(String status) {
		// TODO Auto-generated method stub
		advertisementDao.deleteAdvertisement(status);
	}
}
