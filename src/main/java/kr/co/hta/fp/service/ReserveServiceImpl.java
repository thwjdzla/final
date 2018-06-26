package kr.co.hta.fp.service;

import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.ConcertDao;
import kr.co.hta.fp.dao.ConcertItemDao;
import kr.co.hta.fp.dao.HotelDao;
import kr.co.hta.fp.dao.HotelItemDao;
import kr.co.hta.fp.dao.PackageDao;
import kr.co.hta.fp.dao.ReserveDao;
import kr.co.hta.fp.dao.ResortDao;
import kr.co.hta.fp.dao.ResortItemDao;
import kr.co.hta.fp.dao.UserDao;
import kr.co.hta.fp.form.PayInfo;
import kr.co.hta.fp.form.ProductAllInfo;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.form.ReserveForm;
import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.utils.StringUtil;
import kr.co.hta.fp.vo.ItemAndOptions;
import kr.co.hta.fp.vo.Membership;
import kr.co.hta.fp.vo.Reserve;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PointList;
import kr.co.hta.fp.vo.ProductInfoForDate;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.hotel.HotelItemOption;
import kr.co.hta.fp.vo.resort.Resort;
import kr.co.hta.fp.vo.resort.ResortItem;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDao reserveDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private HotelItemDao hotelItemDao;
	@Autowired
	private ConcertItemDao concertItemDao;
	@Autowired
	private ResortItemDao resortItemDao;
	@Autowired
	private HotelDao hotelDao;
	@Autowired
	private ConcertDao concertDao;
	@Autowired
	private ResortDao resortDao;
	@Autowired
	private PackageDao packageDao;
	@Autowired
	private PackageService packageService;
	@Autowired
	private ItemService itemService;

	@Override
	public PayInfo getUserPayInfo(User user) {
		boolean reserveHistory = true;
		
		List<Reserve> reserve = reserveDao.getUserReserveByNo(user.getNo());
		if (reserve == null) {
			reserveHistory = false;
		}
		
		PayInfo payinfo = new PayInfo();
		payinfo.setReserveHistory(reserveHistory);
		payinfo.setUserPhone(user.getPhone().split("-"));
		
		return payinfo;
	}
	@Override
	public Object getItemValue(List<ProductInfo> items, String cpName) throws Exception {
		List<Object> products = new ArrayList<Object>();
		ProductInfoForDate productInfoForDate = new ProductInfoForDate();
		for (ProductInfo item : items) {
			if ("H".equals(item.getType())) {
				ProductAllInfo productAllInfo = new ProductAllInfo();
				
				HotelItem productH = hotelItemDao.getHotelItemByNo(item.getNo());
				
				productInfoForDate.setNo(productH.getNo());
				productInfoForDate.setType("H");
				productInfoForDate.setCheckIn(StringUtil.strToDate(item.getCheckIn()));
				productInfoForDate.setCheckOut(StringUtil.strToDate(item.getCheckOut()));
				Package itemPackage = packageDao.getPackageByTypeAndItemNo(productInfoForDate);
				
				productAllInfo.setCheckIn(item.getCheckIn());
				productAllInfo.setCheckOut(item.getCheckOut());
				productAllInfo.setDifDay(StringUtil.subtractDate2(item.getCheckIn(), item.getCheckOut()));
				productAllInfo.setType("H");
				productAllInfo.setItem(productH);
				productAllInfo.setItemCp(cpName);
				if (itemPackage == null) {
					productAllInfo.setPackageNo(item.getPackageNo());
				} else {
					productAllInfo.setPackageNo(itemPackage.getPackageNo());
				}
				products.add(productAllInfo);
				
			} else if ("C".equals(item.getType())) {
				ProductAllInfo productAllInfo = new ProductAllInfo();
				
				ConcertItem productC = concertItemDao.getConcertItemByNo(item.getNo());
				Concert concert = concertDao.searchConcertByCno(productC.getCcNo());
				
				productInfoForDate.setNo(productC.getNo());
				productInfoForDate.setType("C");
				productInfoForDate.setCheckIn(StringUtil.strToDate(item.getCheckIn()));
				productInfoForDate.setCheckOut(StringUtil.strToDate(item.getCheckOut()));
				Package itemPackage = packageDao.getPackageByTypeAndItemNo(productInfoForDate);
				
				productAllInfo.setCheckIn(item.getCheckIn());
				productAllInfo.setCheckOut(item.getCheckOut());
				productAllInfo.setDifDay(0);
				productAllInfo.setType("C");
				productAllInfo.setItem(productC);
				productAllInfo.setItemCp(concert.getCcName());
				if (itemPackage == null) {
					productAllInfo.setPackageNo(item.getPackageNo());
				} else {
					productAllInfo.setPackageNo(itemPackage.getPackageNo());
				}
				
				products.add(productAllInfo);				

			} else if ("R".equals(item.getType())) {
				ProductAllInfo productAllInfo = new ProductAllInfo();
				
				ResortItem productR = resortItemDao.getResortItemByNo(item.getNo());
				Resort resort = resortDao.searchResortByRno(productR.getRsNo());
				
				productInfoForDate.setNo(productR.getNo());
				productInfoForDate.setType("R");
				productInfoForDate.setCheckIn(StringUtil.strToDate(item.getCheckIn()));
				productInfoForDate.setCheckOut(StringUtil.strToDate(item.getCheckOut()));
				Package itemPackage = packageDao.getPackageByTypeAndItemNo(productInfoForDate);
				
				productAllInfo.setCheckIn(item.getCheckIn());
				productAllInfo.setCheckOut(item.getCheckOut());
				productAllInfo.setDifDay(0);
				productAllInfo.setType("R");
				productAllInfo.setItem(productR);
				productAllInfo.setItemCp(resort.getName());
				if (itemPackage == null) {
					productAllInfo.setPackageNo(item.getPackageNo());
				} else {
					productAllInfo.setPackageNo(itemPackage.getPackageNo());
				}
				
				products.add(productAllInfo);
				
			}
		}
		return products;
	}
	@Override
	public String getReserveSuccess(ProductInfo productInfo) {
		ProductInfo cloneProductInfo = new ProductInfo(productInfo.getNo(), productInfo.getType(), productInfo.getCheckIn(), productInfo.getCheckOut());
		String success = "false";
		int count = 0;
		int itemReserve = 0;
		cloneProductInfo.setCheckIn(StringUtil.strReplaceSlash(productInfo.getCheckIn()));
		cloneProductInfo.setCheckOut(StringUtil.strReplaceSlash(productInfo.getCheckOut()));
		if (cloneProductInfo.getType().equals("H")) {
			count = hotelItemDao.getHotelItemQty(cloneProductInfo.getNo());
			itemReserve = reserveDao.getItemReserve(cloneProductInfo);
			if (count > itemReserve) {
				success = "true";
			}
			
		} else if (productInfo.getType().equals("R")) {
			count = resortItemDao.getResortItemQty(cloneProductInfo.getNo()) - productInfo.getQty() + 1;
			itemReserve = reserveDao.getItemReserve(cloneProductInfo);
			if (count > itemReserve) {
				success = "true";
			}
			
		} else if (productInfo.getType().equals("C")) {
			count = concertItemDao.getConcertItemQty(cloneProductInfo.getNo()) - productInfo.getQty() + 1;
			itemReserve = reserveDao.getItemReserve(cloneProductInfo);
			if (count > itemReserve) {
				success = "true";
			}
			
		}
		return success;
	}
	@Override
	public Map<String, Object> getCpItems(Map<String, Object> map) throws Exception {
		Map<String, Object> items = new HashMap<String, Object>();
		Map<String, Object> options = new HashMap<String, Object>();
		List<ItemAndOptions> itemAllInfo = new ArrayList<ItemAndOptions>();
		if (map.get("cpType").equals("H")) {
			int cpNo = (Integer) map.get("cpNo");
			Hotel hotel = hotelDao.searchHotelByNo(cpNo);
			List<HotelItem> hotelItems = hotelItemDao.getHotelItemsByCpNo(hotel.getNo());
			for (HotelItem item : hotelItems) {
				List<String> ops = new ArrayList<String>();
				List<HotelItemOption> option = hotelItemDao.getHotelItemOptions(item.getNo());
				ItemAndOptions itemAndOptions = new ItemAndOptions();
				itemAndOptions.setNo(item.getNo());
				itemAndOptions.setName(item.getName());
				itemAndOptions.setType(item.getType());
				itemAndOptions.setPrice(item.getPrice());
				itemAndOptions.setCount(item.getCount());
				itemAndOptions.setQty(item.getQty());
				itemAndOptions.setImg(item.getImg());
				itemAndOptions.setCpNo(item.getHotelNo());
				itemAndOptions.setStatus(item.getStatus());
				for (HotelItemOption op : option) {
					ops.add(op.getName());
				}
				itemAndOptions.setOptions(ops);
				itemAllInfo.add(itemAndOptions);
			}
			items.put("cpName", hotel.getName());
			items.put("items", itemAllInfo);
			items.put("itemType", "H");
			items.put("cEndDate", 0);
			items.put("cStartDate", 0);
			
		} else if (map.get("cpType").equals("R")) {
			int cpNo = (Integer) map.get("cpNo");
			Resort resort = resortDao.searchResortByNo(cpNo);
			List<ResortItem> resortItems = resortItemDao.getResortItemByCpNo(resort.getNo());
			for (ResortItem item : resortItems) {
				ItemAndOptions itemAndOptions = new ItemAndOptions();
				itemAndOptions.setNo(item.getNo());
				itemAndOptions.setName(item.getName());
				itemAndOptions.setType(item.getType());
				itemAndOptions.setPrice(item.getPrice());
				itemAndOptions.setCount(item.getCount());
				itemAndOptions.setImg(item.getImg());
				itemAndOptions.setCpNo(item.getRsNo());
				itemAndOptions.setStatus(item.getStatus());
				
				itemAllInfo.add(itemAndOptions);
			}
			items.put("cpName", resort.getName());
			items.put("items", itemAllInfo);
			items.put("itemType", "R");
			items.put("cEndDate", 0);
			items.put("cStartDate", 0);
			
		} else if (map.get("cpType").equals("C")) {
			int cpNo = (Integer) map.get("cpNo");
			Concert concert = concertDao.searchConcertByNo(cpNo);
			List<ConcertItem> concertItems = concertItemDao.getConcertItemsByCpNo(concert.getCcNo());
			for (ConcertItem item : concertItems) {
				ItemAndOptions itemAndOptions = new ItemAndOptions();
				itemAndOptions.setNo(item.getNo());
				itemAndOptions.setName(item.getName());
				itemAndOptions.setPrice(item.getPrice());
				itemAndOptions.setImg(item.getImg());
				itemAndOptions.setCpNo(item.getCcNo());
				itemAndOptions.setStatus(item.getStatus());
				itemAndOptions.setQty(item.getQty());
				itemAndOptions.setCcitDate(item.getCcitDate());
				
				itemAllInfo.add(itemAndOptions);
			}
			String toDay = StringUtil.dateToStr(new Date());
			String endDate = StringUtil.dateToStr(concert.getCcEndDate());
			String startDate = StringUtil.dateToStr(concert.getCcStartDate());
			long difDate = StringUtil.subtractDate3(toDay, endDate);
			// 시작일이 오늘보다 전인가?
			boolean result = StringUtil.dateIsBefore(startDate, toDay);
			if (result) {
				items.put("cEndDate", difDate);
				items.put("cStartDate", 0);
			} else {
				items.put("cEndDate", difDate);
				difDate = StringUtil.subtractDate3(startDate, toDay);
				items.put("cStartDate", difDate);
			}
			items.put("cpName", concert.getCcName());
			items.put("items", itemAllInfo);
			items.put("itemType", "C");
			
		}
		
		return items;
	}
	@Override
	public void addReserve(ReserveForm reserveForm) {
		Reserve reserve = new Reserve();
		Map<String, Object> forUpdate = new HashMap<String, Object>();
		Package itemPackage = new Package();
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> membership = new HashMap<String, Object>();
		
		itemPackage = packageDao.selectPackageByNo(Integer.parseInt(reserveForm.getPackageNums()));
		User user = userDao.getUserByNo(reserveForm.getUserNo());
		Membership userGrade = reserveDao.getUserMembershipByNo(user.getNo());
		
		reserve.setCheckIn(itemPackage.getStartDate());
		reserve.setCheckOut(itemPackage.getEndDate());
		reserve.setPrice(reserveForm.getPrice());
		reserve.setPackageNo(itemPackage.getPackageNo());
		reserve.setUserNo(reserveForm.getUserNo());
		reserve.setUsePoint(reserveForm.getUsePoint());
		reserve.setStackPoint(reserveForm.getPrice() * userGrade.getPointRate() / 100);
		reserve.setRequest(reserveForm.getRequest());
		reserve.setQty(Integer.parseInt(reserveForm.getQty().replace("장", "")));
		reserveDao.addReserve(reserve);
		
		int price = user.getTotalPrice() + reserveForm.getPrice();
		int point = user.getTotalPoint() - reserve.getUsePoint() + reserve.getStackPoint();
		map.put("totalPrice", price);
		map.put("totalPoint", point);
		map.put("userNo", user.getNo());
		userDao.reserveDataUpdate(map);
		
		LocalDate now = LocalDate.now();
		LocalDate fLocalDate = now.minusYears(1);
		String fDate = fLocalDate.format(DateTimeFormatter.ofPattern("yyyy/M/d"));
		String nDate = now.format(DateTimeFormatter.ofPattern("yyyy/M/d"));

		forUpdate.put("userNo", user.getNo());
		forUpdate.put("fDate", fDate);
		forUpdate.put("lDate", nDate);
		List<Reserve> userReserves = reserveDao.getUserReserveByDate(forUpdate);
		membership.put("userNo", user.getNo());
		if (user.getTotalPrice() >= 2000000) {
			if (!("골드".equals(userGrade))) {
				membership.put("grade", "골드");
				membership.put("rate", 10);
				membership.put("point", 10);
				reserveDao.updateMembership(membership);
			}
			
		} else if (user.getTotalPrice() >= 1000000) {
			if (!("실버".equals(userGrade))) {
				membership.put("grade", "실버");
				membership.put("rate", 5);
				membership.put("point", 5);
				reserveDao.updateMembership(membership);
			}
			
		} else if (user.getTotalPrice() < 1000000) {
			if (!("브론즈".equals(userGrade))) {
				membership.put("grade", "브론즈");
				membership.put("rate", 5);
				membership.put("point", 1);
				reserveDao.updateMembership(membership);
			}
		}
	}
	
	@Override
	public int getItemReserve(ProductInfo productInfo) {
		return reserveDao.getItemReserve(productInfo);
	}
	
	@Override
	public List<ReserveStringForm> getUserReserveByNo(int no) throws Exception{
		List<ReserveStringForm> reserveStrings = new ArrayList();
		List<Reserve> reserves = reserveDao.getUserReserveByNo(no);
		reserveStrings = forReserve(reserves);
		
		return reserveStrings;
	}
	@Override
	public Membership getUserMembershipByNo(int userNo) {
		Membership membership = new Membership();
		membership = reserveDao.getUserMembershipByNo(userNo);
		if (membership == null) {
			reserveDao.addMembership(userNo);
			membership = reserveDao.getUserMembershipByNo(userNo);
		}
		return membership;
	}
	@Override
	public List<ReserveStringForm> getReserveRank() {
		return reserveDao.getReserveRank();
	}
	
	@Override
	public void userRefund(ReserveStringForm reserveStringForm) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("status", "환불 요청");
		map.put("userNo", reserveStringForm.getUserNo());
		map.put("reserveNo", reserveStringForm.getReserveNo());
		map.put("reason", reserveStringForm.getReason());
		reserveDao.updateReserveStatus(map);
	}
	
	@Override
	public List<ReserveStringForm> getCompanyReserveByNoAndType(int no, String type)  throws Exception{
		List<ReserveStringForm> reserveStrings = new ArrayList<ReserveStringForm>();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("no", no);
		List<Reserve> reserves = reserveDao.getCompanyReserveList(map);
		if ("H".equals(type)) {
			reserveStrings = forReserve(reserves);
		} else if ("R".equals(type)) {
			reserveStrings = forReserve(reserves);
		} else if ("C".equals(type)) {
			reserveStrings = forReserve(reserves);
		}  
		return reserveStrings;
	}
	
	public void companyRefund(ReserveStringForm reserveStringForm) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> membership = new HashMap<String, Object>();
		map.put("status", "환불");
		map.put("userNo", reserveStringForm.getUserNo());
		map.put("reserveNo", reserveStringForm.getReserveNo());
		map.put("reason", reserveStringForm.getReason());
		reserveDao.updateReserveStatus(map);
		
		User user = userDao.getUserByNo(reserveStringForm.getUserNo());
		Membership userGrade = reserveDao.getUserMembershipByNo(user.getNo());
		Reserve reserve = reserveDao.getUserReserveByReserveNo(reserveStringForm.getReserveNo());
		// 유저 정보 되돌리기
		Map<String, Object> reserveUpdate = new HashMap<String, Object>();
		int price = (user.getTotalPrice() - reserve.getPrice());
		int point = (user.getTotalPoint() + reserve.getUsePoint() - reserve.getStackPoint());
		reserveUpdate.put("totalPrice", price);
		reserveUpdate.put("totalPoint", point);
		reserveUpdate.put("userNo", user.getNo());
		userDao.reserveDataUpdate(reserveUpdate);
		
		if (user.getTotalPrice() >= 2000000) {
			if (!("골드".equals(userGrade))) {
				membership.put("grade", "골드");
				membership.put("rate", 10);
				membership.put("point", 10);
				reserveDao.updateMembership(membership);
			}
			
		} else if (user.getTotalPrice() >= 1000000) {
			if (!("실버".equals(userGrade))) {
				membership.put("grade", "실버");
				membership.put("rate", 5);
				membership.put("point", 5);
				reserveDao.updateMembership(membership);
			}
			
		} else if (user.getTotalPrice() < 1000000) {
			if (!("브론즈".equals(userGrade))) {
				membership.put("grade", "브론즈");
				membership.put("rate", 5);
				membership.put("point", 1);
				reserveDao.updateMembership(membership);
			}
		}
		
		Map<String, Integer> count = new HashMap<String, Integer>();
		Package item = packageDao.selectPackageByNo(reserve.getPackageNo());
		count.put("pNo",  reserve.getPackageNo());
		count.put("count", item.getCount() + reserve.getQty());
		packageDao.updatePackageCount(count);
	}
	
	private List<ReserveStringForm> forReserve(List<Reserve> reserves) throws Exception {
		List<ReserveStringForm> reserveStrings = new ArrayList<ReserveStringForm>();
		for(Reserve reserve : reserves) {
			ReserveStringForm reserveString = new ReserveStringForm();
			Package packageItem = packageDao.selectPackageByNo(reserve.getPackageNo());
			BeanUtils.copyProperties(reserve, reserveString);
			reserveString.setPackageName(packageItem.getPackageName());
			reserveString.setReserveDate(StringUtil.dateToStr(reserve.getReserveDate()));
			reserveString.setCheckIn(StringUtil.dateToStr(reserve.getCheckIn()));
			long dif = StringUtil.subtractDate4(reserve.getCheckIn(), reserve.getCheckOut());
			if (dif == 0) {
				reserveString.setCount(reserve.getQty());
			} else {
				reserveString.setCount((int) dif);
			}
			
			LocalDate firstDate = LocalDate.parse(StringUtil.dateToStr(reserve.getCheckIn()), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			LocalDate secondDate = LocalDate.now();
			if (secondDate.isBefore(firstDate)) {
				if (ChronoUnit.DAYS.between(secondDate,firstDate) >= 7) {
					reserveString.setRefundPrice(reserve.getPrice());
				} else if (ChronoUnit.DAYS.between(secondDate,firstDate) == 6 && packageItem.getHotelNo() != null) {
					reserveString.setRefundPrice(reserve.getPrice() * 90 / 100);				
				} else if (ChronoUnit.DAYS.between(secondDate,firstDate) == 5 && packageItem.getHotelNo() != null) {
					reserveString.setRefundPrice(reserve.getPrice() * 85 / 100);
				} else if (ChronoUnit.DAYS.between(secondDate,firstDate) == 4 && packageItem.getHotelNo() != null) {
					reserveString.setRefundPrice(reserve.getPrice() * 80 / 100);
				} else if (ChronoUnit.DAYS.between(secondDate,firstDate) == 3 && packageItem.getHotelNo() != null) {
					reserveString.setRefundPrice(reserve.getPrice() * 70 / 100);
				} else if (ChronoUnit.DAYS.between(secondDate,firstDate) == 2 && packageItem.getHotelNo() != null) {
					reserveString.setRefundPrice(reserve.getPrice() * 50 / 100);
				} else if (ChronoUnit.DAYS.between(secondDate,firstDate) == 1) {
					if (packageItem.getHotelNo() == null) {
						reserveString.setRefundPrice(reserve.getPrice() * 90 / 100);
					} else if (packageItem.getHotelNo() != null) {
						reserveString.setRefundPrice(reserve.getPrice() * 30 / 100);
					}
				} else if (ChronoUnit.DAYS.between(secondDate,firstDate) == 0) {
					reserveString.setRefundPrice(0);
				}
			}
			User user = userDao.getUserByNo(reserve.getUserNo());
			reserveString.setCheckOut(StringUtil.dateToStr(reserve.getCheckOut()));
			reserveString.setDifDay(secondDate.isBefore(firstDate));
			reserveString.setUserId(user.getId());
			reserveString.setUser(user);
			
			if (packageItem.getResortNo() != null) {
				ResortItem item = resortItemDao.getResortItemByNo(packageItem.getResortNo());
				Resort cp = resortDao.searchResortByRno(item.getRsNo());
				reserveString.setItem(cp);
			}
			if (packageItem.getHotelNo() != null) {
				HotelItem item = hotelItemDao.getHotelItemByNo(packageItem.getHotelNo());
				Hotel cp = hotelDao.searchHotelByHno(item.getHotelNo());
				reserveString.setItem(cp);
			}
			reserveStrings.add(reserveString);
		}
		return reserveStrings;
	}
	@Override
	public List<ReserveStringForm> getUserReserveListPaging(Map<String, Object> map) throws Exception{
		List<ReserveStringForm> reserveStrings = new ArrayList<ReserveStringForm>();
		String status = (String)map.get("status");
		status = status.replace(" 내역", "");
		status = status.replace(" 보기", "");
		map.put("status", status);
		List<Reserve> reserves = reserveDao.getUserReservePaging(map);
		reserveStrings = forReserve(reserves);
		return reserveStrings;
	}
	@Override
	public int getUserReserveCount(Map<String, Object> map) {
		String status = (String)map.get("status");
		status = status.replace(" 내역", "");
		status = status.replace(" 보기", "");
		map.put("status", status);
		return reserveDao.getUserReserveCount(map);
	}
	
	@Override
	public int getCompanyReserveCount(Map<String, Object> map) {
		String status = (String)map.get("status");
		status = status.replace(" 내역", "");
		status = status.replace(" 보기", "");
		map.put("status", status);
		return reserveDao.getCompanyReserveCount(map);
	}
	@Override
	public List<ReserveStringForm> getCompanyReserveListPaging(Map<String, Object> map) throws Exception {
		List<ReserveStringForm> reserveStrings = new ArrayList<ReserveStringForm>();
		String status = (String)map.get("status");
		status = status.replace(" 내역", "");
		status = status.replace(" 보기", "");
		map.put("status", status);
		List<Reserve> reserves = reserveDao.getCompanyReservePaging(map);
		reserveStrings = forReserve(reserves);
		return reserveStrings;
	}
	@Override
	public List<PointList> getUserPointList(Map<String, Object> map) {
		Package item = new Package();
		List<PointList> pointList = new ArrayList<PointList>();
		List<Reserve> reserves = reserveDao.getUserReservePaging(map);
		for (Reserve reserve : reserves) {
			PointList point = new PointList();
			BeanUtils.copyProperties(reserve, point);
			item = packageDao.selectPackageByNo(reserve.getPackageNo());
			point.setReserveDate(StringUtil.dateToStr2(reserve.getReserveDate()));
			point.setPackageName(item.getPackageName());
			point.setCount(reserve.getQty());
			pointList.add(point);
		}
		return pointList;
	}
	
	@Override
	public ConcertItem searchConcertItem(Map<String, Object> map) {
		ConcertItem concertItem = concertItemDao.getConcertItemByNameAndDate(map);
		return concertItem;
	}
	
	public Map<String, Object> getCpMap(Map<String, Object> map) {
		String num = (String) map.get("no");
		int no = Integer.parseInt(num);
		Hotel hotel = hotelDao.searchHotelByNo(no);
		if (hotel == null) {
			return map;
		} else {
			int number = hotel.getNo();
			map.put("no", number);
		}
		return map;
	}
	
}
