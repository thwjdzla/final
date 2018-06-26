package kr.co.hta.fp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hta.fp.service.IntroductionService;
import kr.co.hta.fp.service.ReviewService;
import kr.co.hta.fp.utils.StringUtil;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.resort.Resort;

@Controller
public class DetailController {

	@Autowired
	private IntroductionService introductionService;
	@Autowired
	private ReviewService reviewService;

	@RequestMapping("/detail.do") 
	public String detail(int no, Model model) {
		Hotel hotel = introductionService.searchHotelByNo(no);
		Concert concert = introductionService.searchConcertByNo(no);
		Resort resort = introductionService.searchResortByNo(no);
		if(hotel != null){
			model.addAttribute("hotel",hotel);
		}
		if(concert != null) {
			model.addAttribute("concert",concert);
			model.addAttribute("startdate", StringUtil.dateToStr(concert.getCcStartDate()));
			model.addAttribute("enddate", StringUtil.dateToStr(concert.getCcEndDate()));
		}
		if(resort != null) {
			model.addAttribute("resort",resort);
		}
		
		int reviewCount = reviewService.countReview(no);
		int page = (int)(Math.ceil((double)reviewCount/6));
		model.addAttribute("page", page);
		
		return "item/product/detailpage.jsp";
	}
	
	@RequestMapping("/detailPackage.do")
	public String detailPackage(int no, Model model) {
		Hotel hotel = introductionService.searchHotelByNo(no);
		model.addAttribute("hotel",hotel);
		return "item/product/detailpackagepage.jsp";
	}
	
	@RequestMapping("/avgGrade.do")
	public @ResponseBody float detailPackge(int no) {
		return reviewService.avgGrade(no);
	}
} 
