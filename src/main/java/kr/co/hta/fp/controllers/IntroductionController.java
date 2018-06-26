package kr.co.hta.fp.controllers;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.hta.fp.annotation.LoginUser;
import kr.co.hta.fp.form.ConcertForm;
import kr.co.hta.fp.form.HotelForm;
import kr.co.hta.fp.form.ResortForm;
import kr.co.hta.fp.service.IntroductionService;
import kr.co.hta.fp.vo.Company;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.resort.Resort;

@Controller
@RequestMapping("/intro")
public class IntroductionController {

	@Value("${image.saved.directory}")
	private String directory;
	
	@Autowired
	private IntroductionService introductionService;
	
	@RequestMapping("/selectform.do")
	public String selectform() {
		return "users/company/selectform.jsp";
	}
	
	@RequestMapping("/form.do")
	public String form(@RequestParam("type") String type) {
		
		if (type.equals("H")) {
			return "users/company/hotelform.jsp";
		}
		
		if (type.equals("C")) {
			return "users/company/concertform.jsp";
		}
		
		return "users/company/resortform.jsp";
	}
	
	@RequestMapping("/success.do")
	public String success() {
		return "users/company/success.jsp";
	}
	
	@RequestMapping("/hotelSubmit.do")
	public String hoterlSubmit(HotelForm hotelForm, @LoginUser User user) throws Exception {
		
		Company company = introductionService.getCompanyByCpNo(hotelForm.getCpNo());
		
		Hotel hotel = new Hotel();
		
		hotel.setCpNo(hotelForm.getCpNo());
		hotel.setName(hotelForm.getHotelName());
		hotel.setAddress(hotelForm.getHotelAddress());
		hotel.setAddressDetail(hotelForm.getDetailAddress1() + "/" + hotelForm.getDetailAddress2());
		hotel.setContents(hotelForm.getHotelContent());
		hotel.setOwner(hotelForm.getHotelOwner());
		hotel.setStar(hotelForm.getHotelStar());
		hotel.setPhone(hotelForm.getTelno1() + "-" + hotelForm.getTelno2() + "-" + hotelForm.getTelno3());
		hotel.setTel(hotelForm.getHotelNum1() + "-" + hotelForm.getHotelNum2() + "-" + hotelForm.getHotelNum3());
		hotel.setLocationLat(hotelForm.getHotelLocationLat());
		hotel.setLocationLng(hotelForm.getHotelLocationLng());
		
		MultipartFile upfile = hotelForm.getHotelImg();
		if (!upfile.isEmpty()) {
			String filename = "hotel-"+ System.currentTimeMillis() + upfile.getOriginalFilename();
			hotel.setImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		
		if (company == null) {
			introductionService.submitByHotel(hotel, user.getNo());
			return "users/company/success.jsp";
		}
		
		introductionService.updateHotel(hotel);
		return "users/company/modifysuccess.jsp";
	}
	
	@RequestMapping("/resortSubmit.do")
	public String resortSubmit(ResortForm resortForm, @LoginUser User user) throws Exception {
		
		Company company = introductionService.getCompanyByCpNo(resortForm.getCpNo());
		
		Resort resort = new Resort();
		
		resort.setCpNo(resortForm.getCpNo());
		resort.setName(resortForm.getResortName());
		resort.setAddress(resortForm.getResortAddress());
		resort.setAddressDetail(resortForm.getDetailAddress1() +"/"+ resortForm.getDetailAddress2());
		resort.setContent(resortForm.getResortContent());
		resort.setOwner(resortForm.getResortOwner());
		resort.setPhone(resortForm.getResortTelNo1() + "-" + resortForm.getResortTelNo2() + "-" + resortForm.getResortTelNo3());
		resort.setTel(resortForm.getResortNum1() + "-" + resortForm.getResortNum2() + "-" + resortForm.getResortNum3());
		resort.setLocationLng(resortForm.getResortLocationLng());
		resort.setLocationLat(resortForm.getResortLocationLat());
		
		MultipartFile upfile = resortForm.getResortImg();
		if (!upfile.isEmpty()) {
			String filename = "resort-"+ System.currentTimeMillis() + upfile.getOriginalFilename();
			resort.setImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		
		if (company == null) {
			introductionService.submitByResort(resort, user.getNo());
			return "users/company/success.jsp";
		}
		
		introductionService.updateResort(resort);
		return "users/company/modifysuccess.jsp";
	}
	
	@RequestMapping("concertSubmit.do")
	public String concertSubmit(ConcertForm concertForm, @LoginUser User user) throws Exception {
		
		Company company = introductionService.getCompanyByCpNo(concertForm.getCpNo());
		
		Concert concert = new Concert();
		
		concert.setCpNo(concertForm.getCpNo());
		concert.setCcName(concertForm.getConcertName());
		concert.setCcLocationlat(concertForm.getLocationlat());
		concert.setCcLocationlng(concertForm.getLocationlng());
		concert.setCcContents(concertForm.getConcertContent());
		concert.setCcStartDate(concertForm.getStartDate());
		concert.setCcEndDate(concertForm.getEndDate());
		concert.setCcTel(concertForm.getConcertNum1() + "-" + concertForm.getConcertNum2() + "-" + concertForm.getConcertNum3());
		concert.setCcPhone(concertForm.getTelno1() + "-" + concertForm.getTelno2() + "-" + concertForm.getTelno3());
		concert.setCcOwner(concertForm.getConcertOwner());
		concert.setCcAddress(concertForm.getConcertAddress());
		concert.setCcDetailAddress(concertForm.getDetailAddress1() +"/"+ concertForm.getDetailAddress2());
		
		MultipartFile upfile = concertForm.getConcertImg();
		if (!upfile.isEmpty()) {
			String filename = "concert-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			concert.setCcImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		
		if (company == null) {
			introductionService.submitByConcert(concert, user.getNo());
			return "users/company/success.jsp";
		}
		
		introductionService.updateConcert(concert);
		return "users/company/modifysuccess.jsp";
	}
	
	@RequestMapping("modify.do")
	public String modifyform(@RequestParam("no") int cpNo, @RequestParam("type") String type, Model model) {
		
		String modify = "";
		
		if (type.equals("H")) {
			model.addAttribute("company", introductionService.searchHotelByNo(cpNo));
			model.addAttribute("cpNo", cpNo);
			modify = "users/company/modifyhotelform.jsp";
			
		} else if (type.equals("C")) {
			model.addAttribute("company", introductionService.searchConcertByNo(cpNo));
			model.addAttribute("cpNo", cpNo);
			modify = "users/company/modifyconcertform.jsp";
			
		} else {
			model.addAttribute("company", introductionService.searchResortByNo(cpNo));
			model.addAttribute("cpNo", cpNo);
			modify = "users/company/modifyresortform.jsp";
		}
		
		return modify;
	}
	
	@RequestMapping("deletecompany.do")
	public String deletecompany(@RequestParam("dno") int no) {
		
		introductionService.deleteCompany(no);
		
		return "/board/registeredList.do";
	}
}
