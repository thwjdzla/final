package kr.co.hta.fp.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hta.fp.annotation.LoginUser;
import kr.co.hta.fp.exception.FpException;
import kr.co.hta.fp.form.PackageForm;
import kr.co.hta.fp.service.IntroductionService;
import kr.co.hta.fp.service.ItemService;
import kr.co.hta.fp.service.PackageService;
import kr.co.hta.fp.utils.StringUtil;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;
import kr.co.hta.fp.vo.resort.ResortItem;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.PackageReceiver;
import kr.co.hta.fp.vo.User;

@Controller
@RequestMapping("/package")
public class PackageController {

	@Autowired
	private ItemService itemService;
	
	@Autowired
	private PackageService packageService;
	
	@Autowired
	private IntroductionService introductionService;
	
	@RequestMapping("/package.do")
	public String packageInfo(int no, Model model) {
		Package packageItem = new Package();
		PackageForm packageForm = new PackageForm();
		
		packageItem = packageService.selectPackageByNo(no);
		HotelItem hotelItem = new HotelItem();
		hotelItem = itemService.getHotelItemByNo(packageItem.getHotelNo());
		packageForm.setHotelItem(hotelItem);
		Hotel hotel = new Hotel();
		hotel = introductionService.searchHotelByHno(hotelItem.getHotelNo());//미완
		packageForm.setHotel(hotel);
		
		if(packageItem.getConcertNo() != null) {
			ConcertItem concertItem = new ConcertItem();
			concertItem = itemService.getConcertItemByNo(packageItem.getConcertNo());
			packageForm.setConcertItem(concertItem);
			Concert concert = new Concert();
			concert = introductionService.searchConcertByCno(concertItem.getCcNo());//미완
			packageForm.setConcert(concert);
		}
		if(packageItem.getResortNo() != null) {
			ResortItem resortItem = new ResortItem();
			resortItem = itemService.getResortItemByNo(packageItem.getResortNo());
			packageForm.setResortItem(resortItem);
			Resort resort = new Resort();
			resort = introductionService.searchResortByRno(resortItem.getRsNo());
			packageForm.setResort(resort);
		}
		
		packageForm.setNo(packageItem.getPackageNo());
		packageForm.setName(packageItem.getPackageName());
		packageForm.setStartDate(StringUtil.dateToStr(packageItem.getStartDate()));
		packageForm.setEndDate(StringUtil.dateToStr(packageItem.getEndDate()));
		packageForm.setCount(packageItem.getCount());
		packageForm.setRate(packageItem.getRate());
		model.addAttribute("packageform", packageForm);
		model.addAttribute("today",new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		
		return "item/package/detailpackagepage.jsp";
	}
	
	@RequestMapping("/packagelist.do")
	public String packagelist(Model model) {
		
		//model.addAttribute("packageApplicants", packageService.getPackageBoardList());
		int listCount = packageService.getPackageListCount();
		int page = (int)(Math.ceil((double)listCount/10));
		model.addAttribute("page", page);
		
		return "item/package/packageboard.jsp";
	}
	
	@RequestMapping("/addform.do")
	public String addform() {
		return "item/package/packageform.jsp";
	}
	
	@RequestMapping("/addmixup.do")
	public String addmixup(@RequestParam("add-type") String type, @RequestParam("userItem") int itemNo, PackageApplicant applicant) {
		
		if ("H".equals(type)) {
			applicant.setHotelItemNo(itemNo);
		} else if ("C".equals(type)) {
			applicant.setConcertItemNo(itemNo);
		} else if ("R".equals(type)) {
			applicant.setResortItemNo(itemNo);
		}
		
		packageService.addPackageApplicant(applicant);
		
		return "redirect:/package/mypa.do";
	}
	
	@RequestMapping("/submitpr.do")
	public String submitpr(@LoginUser User user, @RequestParam("paNo") int paNo, @RequestParam("type2") String type, @RequestParam("selectItem") int siNo) {
		
		List<PackageReceiver> getUserNo = packageService.getPabyPr(paNo);
		
		for (PackageReceiver pr : getUserNo) {
			if (pr.getUserNo() == user.getNo() && pr.getStatus().equals("Y")) {
				System.out.println("중복 신청 발생함");
				throw new FpException("중복 신청 하지마라.");
				//return "redirect:/package/mypr.do";
			}
		}
		
		PackageReceiver receiver = new PackageReceiver();
		receiver.setUserNo(user.getNo());
		receiver.setUserId(user.getId());
		receiver.setPaNo(paNo);
		
		if ("H".equals(type)) {
			receiver.setHotelItemNo(siNo);
		} else if ("C".equals(type)) {
			receiver.setConcertItemNo(siNo);
		} else if ("R".equals(type)) {
			receiver.setResortItemNo(siNo);
		}
		
		packageService.submitPackageReceiver(receiver);
		
		return "redirect:/package/mypr.do";
	}
	
	@RequestMapping("/mypa.do")
	public String mypa(@LoginUser User user, Model model) {
		
		//model.addAttribute("mypa", packageService.getMyPackageApplicantByNo(user.getNo()));
		int listCount = packageService.getMyApplicantCount(user.getNo());
		int page = (int)(Math.ceil((double)listCount/10));
		model.addAttribute("page", page);
		
		return "item/package/mypackageapllicant.jsp";
	}
	
	@RequestMapping("/mypr.do")
	public String mypr(@LoginUser User user, Model model) {
		
		//model.addAttribute("packageApplicants", packageService.getMyPackageReceiverByNo(user.getNo()));
		int listCount = packageService.getMyReceiverCount(user.getNo());
		int page = (int)(Math.ceil((double)listCount/10));
		model.addAttribute("page", page);
		
		return "item/package/mypackagereceiver.jsp";
	}
	
	@RequestMapping("/cancle.do")
	public String cancle(@RequestParam("cancleNo") int no, @RequestParam("cancleStatus") String status) {
		
		if(status.equals("Y")) {
			packageService.canclePackageReceiver(no);
		} else {
			packageService.canclePackageApplicant(no);
		}
		
		return "redirect:/package/mypr.do";
	}
	
	@RequestMapping("cancleFromPa.do")
	public String cancleFromPa(@RequestParam("no") int no) {
		
		packageService.cancleFromPa(no);
		
		return "redirect:/package/mypa.do";
	}
	
	@RequestMapping("canclePackageByPrNo.do")
	public String canclePackageByPrNo(@RequestParam("no") int no) {
		packageService.canclePackageByPrNo(no);
		
		return "redirect:/package/mypa.do";
	}
	
	@RequestMapping("/contract.do")
	public String contract(@RequestParam("no")int no, @LoginUser User user) {
		
		Map<String, Object> numbers = new HashMap<String, Object>();
		numbers.put("no", no);
		numbers.put("ruNo", user.getNo());
		packageService.contractPackage(numbers);
		
		return "redirect:/package/packagelist.do";
	}
	
	@RequestMapping("getPackageReserve.do")
	public @ResponseBody boolean getPackageReserve(int no) {
		return packageService.getPackageReserve(no);
	}
}
