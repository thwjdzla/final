package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.CompanyDao;
import kr.co.hta.fp.dao.ConcertDao;
import kr.co.hta.fp.dao.HotelDao;
import kr.co.hta.fp.dao.ResortDao;
import kr.co.hta.fp.dao.SequenceDao;
import kr.co.hta.fp.vo.Company;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;

@Service
public class IntroductionServiceImpl implements IntroductionService {

   @Autowired
   private HotelDao hotelDao;
   @Autowired
   private ResortDao resortDao;
   @Autowired
   private ConcertDao concertDao;
   @Autowired
   private SequenceDao sequenceDao;
   @Autowired
   private CompanyDao companyDao;
   
   @Override
   public Hotel searchHotelByNo(int no) {
      return hotelDao.searchHotelByNo(no);
   }   
   @Override
	public Concert searchConcertByNo(int no) {
		return concertDao.searchConcertByNo(no);
	}
   @Override
   public Resort searchResortByNo(int no) {
	   return resortDao.searchResortByNo(no);
   }
   
   @Override
   public Hotel searchHotelByHno(int no) {
      return hotelDao.searchHotelByHno(no);
   }   
   @Override
	public Concert searchConcertByCno(int no) {
		return concertDao.searchConcertByCno(no);
	}
   @Override
   public Resort searchResortByRno(int no) {
	   return resortDao.searchResortByRno(no);
   }
   
   @Override
   public void submitByHotel(Hotel hotel, int userNo) {
      
      int cpNo = sequenceDao.getCompanySeq();
      
      Company company = new Company();
      company.setCpNo(cpNo);
      company.setCpName(hotel.getName());
      company.setUserNo(userNo);
      company.setCpType("H");
      companyDao.addCompany(company);
      
      hotel.setCpNo(cpNo);
      hotelDao.submitByHotel(hotel);
   }

   @Override
   public void submitByResort(Resort resort, int userNo) {
      
      int cpNo = sequenceDao.getCompanySeq();
      
      Company company = new Company();
      company.setCpNo(cpNo);
      company.setCpName(resort.getName());
      company.setUserNo(userNo);
      company.setCpType("R");
      companyDao.addCompany(company);
      
      resort.setCpNo(cpNo);
      resortDao.submitByResort(resort);
   }
	@Override
	public void submitByConcert(Concert concert, int userNo) {
		
		int cpNo = sequenceDao.getCompanySeq();
		
		Company company = new Company();
		company.setCpNo(cpNo);
		company.setCpName(concert.getCcName());
		company.setUserNo(userNo);
		company.setCpType("C");
		companyDao.addCompany(company);
		
		concert.setCpNo(cpNo);
		concertDao.submitByConcert(concert);
	}

	@Override
	public List<Hotel> selectrecentHotel() {
		return hotelDao.selectrecentHotel();
	}
	@Override
	public List<Concert> selectrecentConcert() {
		return concertDao.selectrecentConcert();
	}
	@Override
	public List<Resort> selectrecentResort() {
		return resortDao.selectrecentResort();
	}
	@Override
	public Company getCompanyByCpNo(int no) {
		return companyDao.getCompanyByCpNo(no);
	}
	@Override
	public void updateHotel(Hotel hotel) {
		hotelDao.updateHotel(hotel);
	}
	@Override
	public void updateResort(Resort resort) {
		resortDao.updateResort(resort);
	}
	@Override
	public void updateConcert(Concert concert) {
		concertDao.updateConcert(concert);
	}
	@Override
	public void deleteCompany(int no) {
		
		companyDao.deleteCompany(no);
	}
	
}