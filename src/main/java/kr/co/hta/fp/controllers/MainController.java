package kr.co.hta.fp.controllers;

import java.io.File;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.hta.fp.form.AdvertisementForm;
import kr.co.hta.fp.form.PackageForm;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.service.AdvertisementApplyService;
import kr.co.hta.fp.service.AdvertisementService;
import kr.co.hta.fp.service.IntroductionService;
import kr.co.hta.fp.service.PackageService;
import kr.co.hta.fp.service.ReserveService;
import kr.co.hta.fp.vo.Advertisement;
import kr.co.hta.fp.vo.AdvertisementApply;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;

@Controller
public class MainController {
	
	@Value("${image.saved.directory}")
	private String directory;
	
	@Autowired
	AdvertisementService advertisementService;
	
	@Autowired
	AdvertisementApplyService advertisementApplyService;
	
	@Autowired
	IntroductionService introductionService;
	
	@Autowired
	ReserveService reserveService;
	
	@Autowired
	PackageService packageService;

	@RequestMapping("/home.do")
	public String main(Model model) {
		Advertisement advertisementTop = new Advertisement();
		Advertisement advertisementLeft = new Advertisement();
		Advertisement advertisementRight = new Advertisement();
		
		advertisementTop = advertisementService.selectAdvertisement("top");
		advertisementLeft = advertisementService.selectAdvertisement("bottom-left");
		advertisementRight = advertisementService.selectAdvertisement("bottom-right");
				
		model.addAttribute("advertisementTop",advertisementTop);
		model.addAttribute("advertisementLeft",advertisementLeft);
		model.addAttribute("advertisementRight",advertisementRight);

		List<PackageForm> packageList = packageService.selectrecentPackage();
		List<PackageForm> packageInfo = new ArrayList();
		for(PackageForm f: packageList) {
			Hotel hotel = f.getHotel();
			String address = hotel.getAddressDetail();
			String addresssplit[] = address.split("/");
			hotel.setAddressDetail(addresssplit[0]);
			f.setHotel(hotel);
			packageInfo.add(f);
		}
		model.addAttribute("packageList",packageInfo);
		return "main/main.jsp";
	}
	
	@RequestMapping("/ad.do")
	public String ad(Model model) {
		List<AdvertisementApply> advertisementApply = advertisementApplyService.selectAdvertisementApply();
		model.addAttribute("advertisementApply", advertisementApply);
		return "main/advertisement.jsp";
	}
	
	@RequestMapping("/insertad.do")
	public String insertad(AdvertisementForm ad) throws Exception {
		advertisementService.deleteAdvertisement(ad.getStatus());
		Advertisement advertisement = new Advertisement();
		advertisement.setNo(ad.getNo());
		advertisement.setLink(ad.getLink());
		advertisement.setStatus(ad.getStatus());
		MultipartFile file = ad.getImage();
		String filename = System.currentTimeMillis() +file.getOriginalFilename();
		advertisement.setImage(filename);
		
		FileCopyUtils.copy(file.getBytes(), new File(directory, filename));
		advertisementService.insertAdvertisement(advertisement);
		return "redirect:/home.do";
	}
	



	@RequestMapping("/deleteadvertisementApply.do")
	public String deleteadApply(int no) {
		advertisementApplyService.deleteAdvertisementApply(no);
		return "redirect:/ad.do";
	}


	@RequestMapping("findrecenthotel.do")
	public @ResponseBody List<Hotel> findrecenthotel() {
		return introductionService.selectrecentHotel();
	}
	
	@RequestMapping("findrecentresort.do")
	public @ResponseBody List<Resort> findrecentresort() {
		return introductionService.selectrecentResort();
	}
	
	@RequestMapping("findrecentconcert.do")
	public @ResponseBody List<Concert> findrecentconcert() {
		return introductionService.selectrecentConcert();
	}

	
	@RequestMapping("top10.do")
	public @ResponseBody List<ReserveStringForm> reserveItemAdd(ProductInfo productInfo) {
		return reserveService.getReserveRank();
	}
}
