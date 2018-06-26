package kr.co.hta.fp.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hta.fp.dao.PackageDao;
import kr.co.hta.fp.dao.ReserveDao;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.form.ReserveForm;
import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.service.ItemService;
import kr.co.hta.fp.service.PackageService;
import kr.co.hta.fp.service.ReserveService;
import kr.co.hta.fp.service.UserService;
import kr.co.hta.fp.utils.StringUtil;
import kr.co.hta.fp.vo.Reserve;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.resort.ResortItem;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PointList;

@Controller
public class PayController {

	@Autowired
	private ReserveService reserveService;
	@Autowired
	private PackageService packageService;
	@Autowired
	private UserService userService;
	@Autowired
	private ItemService itemService;
	
	@RequestMapping("/pay.do")
	public String pay(HttpSession session, @RequestParam String cpName, ProductInfo productInfo, Model model) throws Exception {
		User user = (User)session.getAttribute("LOGIN_USER");
		List<ProductInfo> items = new ArrayList<ProductInfo>();
		if("P".equals(productInfo.getType())) {
			ProductInfo hotelInfo = productInfo;
			hotelInfo.setType("H");
			items.add(hotelInfo);
			Package packageForm = packageService.selectPackageByNo(productInfo.getPackageNo());
			ProductInfo optionInfo = new ProductInfo();
			if(packageForm.getConcertNo() != null) {
				optionInfo = new ProductInfo();
				ConcertItem concertItem = itemService.getConcertItemByNo(packageForm.getConcertNo());
				optionInfo.setNo(concertItem.getCcNo());
				optionInfo.setType("C");
				optionInfo.setPackageNo(productInfo.getPackageNo());
				optionInfo.setCheckIn(concertItem.getCcitDate());
				optionInfo.setCheckOut(concertItem.getCcitDate());
				items.add(optionInfo);
			}
			if(packageForm.getResortNo() != null) {
				optionInfo = new ProductInfo();
				ResortItem resortItem = itemService.getResortItemByNo(packageForm.getResortNo());
				optionInfo.setNo(resortItem.getNo());
				optionInfo.setType("R");
				optionInfo.setPackageNo(productInfo.getPackageNo());
				optionInfo.setCheckIn(productInfo.getCheckIn());
				optionInfo.setCheckOut(productInfo.getCheckOut());
				items.add(optionInfo);
			}
		} else {
			items.add(productInfo);
		}
		model.addAttribute("membership", reserveService.getUserMembershipByNo(user.getNo()));
		model.addAttribute("payInfo", reserveService.getUserPayInfo(user));
		model.addAttribute("products", reserveService.getItemValue(items, cpName));
		model.addAttribute("cpName", cpName);
		model.addAttribute("qty", productInfo.getQty());
		model.addAttribute("user", userService.getUserByNo(user.getNo()));
		return "pay/pay.jsp";
	}
	
	@RequestMapping("/refund.do")
	public String refund() {
		return "pay/refund.jsp";
	}
	
	@RequestMapping("/reserve.do")
	public String reserve(@RequestParam int cpNo, @RequestParam String cpType, Model model) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cpNo", cpNo);
		map.put("cpType", cpType);
		
		model.addAttribute("info", reserveService.getCpItems(map));
		model.addAttribute("startDate",new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		
		return "pay/reserve.jsp";
	}
	
	@RequestMapping("/reservelist.do")
	public String reservelist(int no, Model model) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNo", no);
		map.put("status", "전체");
		map.put("min", 1);
		map.put("max", 10);
		List<ReserveStringForm> reserve = reserveService.getUserReserveListPaging(map);
		int reserveCount = reserveService.getUserReserveCount(map); 
		model.addAttribute("reserve", reserve);
		model.addAttribute("userNo", no);
		model.addAttribute("reserveCount", reserveCount);
		return "pay/reserveList.jsp";
	}
	
	@RequestMapping("/pointlist.do")
	public String pointlist(HttpSession session, Model model) {
		User user = (User)session.getAttribute("LOGIN_USER");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNo", user.getNo());
		map.put("status", "결제");
		map.put("min", 1);
		map.put("max", 10);
		List<PointList> pointList = reserveService.getUserPointList(map);
		int count = reserveService.getUserReserveCount(map);
		model.addAttribute("pointList", pointList);
		model.addAttribute("reserveCount", count);
		model.addAttribute("userName", user.getName());
		model.addAttribute("totalPoint", user.getTotalPoint());
		model.addAttribute("userNo", user.getNo());
		return "pay/pointList.jsp";
	}
	
	@RequestMapping("/pay-final.do")
	public String addReserve(HttpSession session, ReserveForm reserveForm) {
		User user = (User)session.getAttribute("LOGIN_USER");
		Map<String, Integer> map = new HashMap<String, Integer>();
		String packageNums = reserveForm.getPackageNums();
		packageNums.replace(",", "");
		reserveForm.setPackageNums(packageNums);
		reserveService.addReserve(reserveForm);
		map.put("pNo", Integer.parseInt(packageNums));
		map.put("count", Integer.parseInt(reserveForm.getQty()) * -1);
		packageService.updateCount(map);
		return "redirect:reservelist.do?no="+user.getNo();
	}
	
	@RequestMapping("/user-refund.do")
	public String userRefund(ReserveStringForm reserveStringForm) {
		reserveService.userRefund(reserveStringForm);
		return "redirect:reservelist.do?no="+reserveStringForm.getUserNo();
	}
	
	@RequestMapping("/company-reserve-list.do")
	public String companyReserveList(String no, String type, Model model) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("status", "전체");
		map.put("type", type);
		map.put("min", 1);
		map.put("max", 10);
		map = reserveService.getCpMap(map);
		List<ReserveStringForm> reserves = reserveService.getCompanyReserveListPaging(map);
		int count = reserveService.getCompanyReserveCount(map);
		model.addAttribute("reserve", reserves);
		model.addAttribute("type", type);
		model.addAttribute("no", no);
		model.addAttribute("reserveCount", count);
		return "pay/companyReserveList.jsp";
	}
	
	@RequestMapping("/company-refund.do")
	public String companyRefund(ReserveStringForm reserveStringForm, @RequestParam("type") String type, @RequestParam("no") int no) {
		reserveService.companyRefund(reserveStringForm);
		return "redirect:company-reserve-list.do?no=" + no + "&type=" + type;
	}
}
