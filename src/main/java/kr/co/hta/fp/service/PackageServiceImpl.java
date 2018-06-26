package kr.co.hta.fp.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.ConcertDao;
import kr.co.hta.fp.dao.ConcertItemDao;
import kr.co.hta.fp.dao.HotelItemDao;
import kr.co.hta.fp.dao.PackageDao;
import kr.co.hta.fp.dao.ReserveDao;
import kr.co.hta.fp.dao.ResortDao;
import kr.co.hta.fp.dao.ResortItemDao;
import kr.co.hta.fp.form.PackageForm;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.utils.StringUtil;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.PackageReceiver;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.ProductInfoForDate;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;
import kr.co.hta.fp.vo.resort.ResortItem;
@Service
public class PackageServiceImpl implements PackageService {
	@Autowired
	private PackageDao packageDao;
	@Autowired
	private HotelItemDao hotelItemDao;
	@Autowired
	private ConcertItemDao concertItemDao;
	@Autowired
	private ConcertDao concertDao;
	@Autowired
	private ReserveDao reserveDao;
	@Autowired
	private ResortItemDao resortItemDao;
	@Autowired
	private ResortDao resortDao;
	
	@Override
	public Package selectPackageByNo(int no) {
		return packageDao.selectPackageByNo(no);
	}

	@Override
	public List<PackageApplicant> getPackageBoardList(Pagination pagination) {
		return packageDao.getPackageBoardList(pagination);
	}

	@Override
	public PackageApplicant getPackageApplicantByNo(int no) {
		return packageDao.getPackageApplicant(no);
	}

	@Override
	public void submitPackageReceiver(PackageReceiver receiver) {
		packageDao.submitPackageReceiver(receiver);
	}

	@Override
	public List<PackageApplicant> getMyPackageApplicantByNo(Pagination pagination) {
		return packageDao.getMyPackageApplicantByNo(pagination);
	}

	@Override
	public void addPackageApplicant(PackageApplicant applicant) {
		packageDao.addPackageApplicant(applicant);
	}

	@Override
	public List<PackageReceiver> getPackageReceiverBypaNo(int no) {
		return packageDao.getPackageReceiverBypaNo(no);
	}

	@Override
	public List<PackageApplicant> getMyPackageReceiverByNo(Pagination pagination) {
		return packageDao.getMyPackageReceiverByNo(pagination);
	}

	@Override
	public void canclePackageApplicant(int no) {
		packageDao.canclePackageApplicant(no);
		packageDao.canclePackage(no);
	}

	@Override
	public void canclePackageReceiver(int no) {
		packageDao.canclePackageReceiver(no);
		packageDao.canclePackage(no);
	}

	@Override
	public List<PackageReceiver> getPabyPr(int no) {
		return packageDao.getPabyPr(no);
	}

	@Override
	public void contractPackage(Map<String, Object> numbers) {
		Package package1 = packageDao.needContract(numbers);
		numbers.put("paNo", package1.getPaNo());
		numbers.put("userNo", package1.getUserNo());
		packageDao.contractPackageReceiver(numbers);
		packageDao.contractStatus(numbers);
		packageDao.contractPackage(package1);
	}
	
	@Override
	public List<Package> getPackagebyConcert(int no) {
		return packageDao.getPackagebyConcert(no);
	}
	@Override
	public List<Package> getPackagebyHotel(int no) {
		return packageDao.getPackagebyHotel(no);
	}
	@Override
	public List<Package> getPackagebyResort(int no) {
		return packageDao.getPackagebyResort(no);
	}
	@Override
	public void addOneItemPackage(ProductInfo productInfo) {
		ProductInfoForDate productInfoForDate = new ProductInfoForDate();
		Date checkIn = StringUtil.strToDate(productInfo.getCheckIn()); 
		Date checkOut = StringUtil.strToDate(productInfo.getCheckOut());
		productInfoForDate.setNo(productInfo.getNo());
		productInfoForDate.setType(productInfo.getType());
		productInfoForDate.setCheckIn(checkIn);
		productInfoForDate.setCheckOut(checkOut);
		Package selectPackage = packageDao.getPackageByTypeAndItemNo(productInfoForDate);
		Package itemPackage = new Package();
		if (selectPackage == null) {
			String type = productInfo.getType();
			if (type.equals("H")) {
				if (!productInfo.getCheckIn().equals(productInfo.getCheckOut())) {
					HotelItem item = hotelItemDao.getHotelItemByNo(productInfo.getNo());
					itemPackage.setPackageName(item.getName());
					itemPackage.setHotelNo(item.getNo());
					Date startDate = StringUtil.strToDate(productInfo.getCheckIn());
					Date endDate = StringUtil.strToDate(productInfo.getCheckOut());
					itemPackage.setStartDate(startDate);
					itemPackage.setEndDate(endDate);
					itemPackage.setCount(item.getCount());
					
					packageDao.contractPackage(itemPackage);
				}
			} else if (type.equals("R")) {
				ResortItem item = resortItemDao.getResortItemByNo(productInfo.getNo());
				Resort resort = resortDao.searchResortByRno(item.getRsNo());
				itemPackage.setPackageName(resort.getName() + " " + item.getName());
				Date startDate = StringUtil.strToDate(productInfo.getCheckIn());
				Date endDate = StringUtil.strToDate(productInfo.getCheckOut());
				itemPackage.setResortNo(item.getNo());
				itemPackage.setStartDate(startDate);
				itemPackage.setEndDate(endDate);
				itemPackage.setCount(item.getCount());
				
				packageDao.contractPackage(itemPackage);
			} else if (type.equals("C")) {
				ConcertItem item = concertItemDao.getConcertItemByNo(productInfo.getNo());
				Concert concert = concertDao.searchConcertByCno(item.getCcNo());
				itemPackage.setPackageName(concert.getCcName() + " " + item.getName());
				itemPackage.setConcertNo(item.getNo());
				Date startDate = StringUtil.strToDate(productInfo.getCheckIn());
				Date endDate = StringUtil.strToDate(productInfo.getCheckOut());
				itemPackage.setStartDate(startDate);
				itemPackage.setEndDate(endDate);
				itemPackage.setCount(item.getQty());
				
				packageDao.contractPackage(itemPackage);
			}
		}
	}

	@Override
	public String getOnePackageByProductInfo(ProductInfo productInfo) {
		String packageNo = "false";
		ProductInfoForDate productInfoForDate = new ProductInfoForDate();
		Date checkIn = StringUtil.strToDate(productInfo.getCheckIn()); 
		Date checkOut = StringUtil.strToDate(productInfo.getCheckOut());
		productInfoForDate.setNo(productInfo.getNo());
		productInfoForDate.setType(productInfo.getType());
		productInfoForDate.setCheckIn(checkIn);
		productInfoForDate.setCheckOut(checkOut);
		Package selectPackage = packageDao.getPackageByTypeAndItemNo(productInfoForDate);
		if (!(selectPackage == null)) {
			packageNo = String.valueOf(selectPackage.getPackageNo());
		}
		return packageNo;
	}

	@Override
	public void updateCount(Map<String, Integer> map) {
		Map<String, Integer> packageMap = new HashMap<String, Integer>();
		Package itemPackage = packageDao.selectPackageByNo(map.get("pNo"));
		packageMap.put("pNo", map.get("pNo"));
		packageMap.put("count", itemPackage.getCount() + map.get("count"));
		packageDao.updatePackageCount(packageMap);
		
	}
	@Override
	public List<PackageForm> selectrecentPackage() {
		return packageDao.selectrecentPackage();
	}

	@Override
	public int getPackageListCount() {
		return packageDao.getPackageListCount();
	}

	@Override
	public int getMyReceiverCount(int no) {
		return packageDao.getMyReceiverCount(no);
	}
	
	@Override
	public boolean getPackageReserve(int no) {
		Package packageform = packageDao.selectPackageByNo(no);
		int count = packageform.getCount();
		if(count > reserveDao.getPackageReserve(no))
			return true;
		else 
			return false;
	}

	@Override
	public int getMyApplicantCount(int no) {
		return packageDao.getMyApplicantCount(no);
	}

	@Override
	public void cancleFromPa(int no) {
		packageDao.cancleFromPa(no);
	}
	
	@Override
	public void canclePackageByPrNo(int no) {
		Map<String, Object> numbers = new HashMap<String, Object>();
		numbers.put("no", no);
		Package package1 = packageDao.needContract(numbers);
		packageDao.canclePackageApplicant(package1.getPaNo());
		packageDao.canclePackage(package1.getPaNo());
	}
}
