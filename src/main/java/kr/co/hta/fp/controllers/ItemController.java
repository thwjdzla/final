package kr.co.hta.fp.controllers;

import java.io.File;
import java.util.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.hta.fp.annotation.LoginUser;
import kr.co.hta.fp.exception.FpException;
import kr.co.hta.fp.form.ConcertItemForm;
import kr.co.hta.fp.form.ConcertItemImgForm;
import kr.co.hta.fp.form.HotelItemForm;
import kr.co.hta.fp.form.ResortItemForm;
import kr.co.hta.fp.form.SiteForm;
import kr.co.hta.fp.service.ItemService;
import kr.co.hta.fp.service.SiteService;
import kr.co.hta.fp.utils.StringUtil;
import kr.co.hta.fp.vo.Site;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.hotel.HotelItemOption;
import kr.co.hta.fp.vo.resort.ResortItem;

@Controller
@RequestMapping("/item")
public class ItemController {

	@Value("${image.saved.directory}")
	private String directory;
	
	@Autowired
	private ItemService itemService;
	
	@Autowired
	private SiteService siteService;
	
// -------------------Concert-------------------------------
	/*private boolean isExist(Set<ConcertItemForm> set, ConcertItemForm item) {
	
		for (ConcertItemForm form : set) {
			if (form.getCcNo() == item.getCcNo()) {
				return true;
			}
		} 
		return false;
	}*/
	@RequestMapping("/registerItemConcert.do")
	public String registerItemConcert(@LoginUser User user, Model model, @RequestParam("no") int cpNo) throws Exception {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		
		List<ConcertItemForm> items = itemService.getConcertItemList(cpNo);
		
		/*Set<ConcertItemForm> set = new HashSet<ConcertItemForm>();
		
		for (ConcertItemForm item : items) {
			if (!isExist(set, item)) {
				set.add(item);
			}
		}*/

		model.addAttribute("concertItems", items);
		/*model.addAttribute("concertItems2", set);*/
		
		return "users/company/registerItemConcert.jsp";
	}
	
	@RequestMapping("/addConcertItem.do")
	public String addConcertItem(ConcertItemImgForm concertItemImgForm) throws Exception {
		ConcertItem concertItemV = new ConcertItem();
		ConcertItem concertItemR = new ConcertItem();
		ConcertItem concertItemS = new ConcertItem();
		
		List<MultipartFile> upfile = concertItemImgForm.getImg();
		List<Integer> qty = concertItemImgForm.getQty();
		List<Integer> price = concertItemImgForm.getPrice();
		MultipartFile file = upfile.get(0);
		
		
		String filenameV = "concertItem-" + System.currentTimeMillis() + upfile.get(0).getOriginalFilename();
		concertItemV.setCcNo(concertItemImgForm.getCcNo());
		concertItemV.setImg(filenameV);
		concertItemV.setQty(qty.get(0));
		concertItemV.setPrice(price.get(0));
		concertItemV.setName("VIP석");
		FileCopyUtils.copy(upfile.get(0).getBytes(), new File(directory, filenameV));
		
		String filenameR = "concertItem-" + System.currentTimeMillis() + upfile.get(1).getOriginalFilename();
		concertItemR.setCcNo(concertItemImgForm.getCcNo());
		concertItemR.setImg(filenameR);
		concertItemR.setQty(qty.get(1));
		concertItemR.setPrice(price.get(1));
		concertItemR.setName("R석");
		FileCopyUtils.copy(upfile.get(1).getBytes(), new File(directory, filenameR));
		
		String filenameS = "concertItem-" + System.currentTimeMillis() + upfile.get(2).getOriginalFilename();
		concertItemS.setCcNo(concertItemImgForm.getCcNo());
		concertItemS.setImg(filenameS);
		concertItemS.setQty(qty.get(2));
		concertItemS.setPrice(price.get(2));
		concertItemS.setName("S석");	
		FileCopyUtils.copy(upfile.get(2).getBytes(), new File(directory, filenameS));
		
		Calendar calendar = Calendar.getInstance();
		String item1 = concertItemImgForm.getStartDate();
		String item2 = concertItemImgForm.getEndDate();
		long days = StringUtil.subtractDate3(item1, item2);
		Date startDate = StringUtil.strToDate2(item1);
		calendar.setTime(startDate);
		calendar.add(calendar.DATE, -1);
		
		for(int i=0; i <= days; i++) {
			calendar.add(calendar.DATE, 1);
			String day = StringUtil.dateToStr2(calendar.getTime());
			concertItemV.setCcitDate(day);
			concertItemR.setCcitDate(day);
			concertItemS.setCcitDate(day);
			itemService.addConcertItem(concertItemV);
			itemService.addConcertItem(concertItemR);
			itemService.addConcertItem(concertItemS);
		}
		
		return "redirect:/item/registerItemConcert.do?no=" + concertItemImgForm.getCpNo() + "&ccNo=" + concertItemImgForm.getCcNo();
	}
	
	@RequestMapping("/delConcertItem.do")
	public String delConcertItem(@RequestParam("no") int ciNo, @RequestParam("cpNo") int cpNo) {
		
		itemService.delConcertItem(ciNo);
		
		return "redirect:/item/registerItemConcert.do?no=" + cpNo;
	}
	
	@RequestMapping("/updateConcertItem.do")
	public String updateConcertItem(@RequestParam("ciNo") int ciNo, ConcertItemForm concertItemForm) throws Exception {
		
		ConcertItem concertItem = new ConcertItem();
		BeanUtils.copyProperties(concertItemForm, concertItem);
		
		concertItem.setNo(ciNo);
		concertItem.setPrice(concertItemForm.getCiPrice());
		concertItem.setQty(concertItemForm.getCiQty());
		
		MultipartFile upfile = concertItemForm.getCiImg();
		if (!upfile.isEmpty()) {
			String filename = "concertItem-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			concertItem.setImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		
		itemService.updateConcertItem(concertItem);
		
		return "redirect:/item/registerItemResort.do?no=" + concertItemForm.getCpNo();
	}
	
	
	
// -------------------Hotel-------------------------------
	/*private boolean isExist(Set<HotelItemForm> set, HotelItemForm item) {
		
		for (HotelItemForm form : set) {
			if (form.getHtNo() == item.getHtNo()) {
				return true;
			}
		} 
		return false;
	}*/
	
	@RequestMapping("/registerItemHotel.do")
	public String registerItemHotel(@LoginUser User user, Model model, @RequestParam("no") int cpNo) {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		
		List<HotelItemForm> items = itemService.getHotelItemList(cpNo);
		
		/*Set<HotelItemForm> set = new HashSet<HotelItemForm>();
		
		for (HotelItemForm item : items) {
			if (!isExist(set, item)) {
				set.add(item);
			}
		}*/
		
		List<HotelItem> hotelNames = itemService.AllHotelItemName();
		List<HotelItem> hotelTypes = itemService.AllHotelItemType();
		
		model.addAttribute("hotelItems", items);
		/*model.addAttribute("hotelItems2", set);*/
		model.addAttribute("hotelNames", hotelNames);
		model.addAttribute("hotelTypes", hotelTypes);
		
		return "users/company/registerItemHotel.jsp";
	}
	
	@RequestMapping("/addHotelItem.do")
	public String addHotelItem(HotelItemForm hotelItemForm) throws Exception {
		
		HotelItem hotelItem = new HotelItem();
		BeanUtils.copyProperties(hotelItemForm, hotelItem);
		int no = itemService.hotelItemSeq();
		
		/*hotelItem.setNo(hotelItemForm.getHiNo());*/
		hotelItem.setNo(no);
		hotelItem.setName(hotelItemForm.getHiName());
		hotelItem.setType(hotelItemForm.getHiType());
		hotelItem.setPrice(hotelItemForm.getHiPrice());
		hotelItem.setCount(hotelItemForm.getHiCount());
		hotelItem.setQty(hotelItemForm.getHiQty());
		hotelItem.setHotelNo(hotelItemForm.getHtNo());
		
		MultipartFile upfile = hotelItemForm.getHiImg();
		if (!upfile.isEmpty()) {
			String filename = "hotelItem-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			hotelItem.setImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		
		ArrayList<HotelItemOption> options = new ArrayList<HotelItemOption>();
		for (String option : hotelItemForm.getOptions()) {
			options.add(new HotelItemOption(option, no));			
		}
		hotelItem.setOptions(options);
		
		itemService.addHotelItem(hotelItem);
		
		return "redirect:/item/registerItemHotel.do?no=" + hotelItemForm.getCpNo() + "&htNo=" + hotelItemForm.getHtNo();
	}
	
	@RequestMapping("/delHotelItem.do")
	public String delHotelItem(@RequestParam("no") int hiNo, @RequestParam("cpNo") int cpNo, @RequestParam("htNo") int htNo) {
		
		itemService.delHotelItem(hiNo);
		
		return "redirect:/item/registerItemHotel.do?no=" + cpNo+"&htNo=" + htNo;
	}
	
	@RequestMapping("/updateHotelItem.do")
	public String updateHotelItem(HotelItemForm hotelItemForm) throws Exception{
		
		System.out.println(hotelItemForm);
		HotelItem hotelItem = new HotelItem();
		BeanUtils.copyProperties(hotelItemForm, hotelItem);
		
		hotelItem.setNo(hotelItemForm.getHiNo());
		hotelItem.setName(hotelItemForm.getHiName());
		hotelItem.setType(hotelItemForm.getHiType());
		hotelItem.setPrice(hotelItemForm.getHiPrice());
		hotelItem.setCount(hotelItemForm.getHiCount());
		hotelItem.setHotelNo(hotelItemForm.getHtNo());
		hotelItem.setQty(hotelItemForm.getHiQty());
		
		MultipartFile upfile = hotelItemForm.getHiImg();
		if (!upfile.isEmpty()) {
			String filename = "hotelItem-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			hotelItem.setImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		
		itemService.deleteHotelItemOption(hotelItemForm.getHiNo());
		
		ArrayList<HotelItemOption> options = new ArrayList<HotelItemOption>();
		for (String option : hotelItemForm.getOptions()) {
			options.add(new HotelItemOption(option, hotelItemForm.getHiNo()));			
		}
		hotelItem.setOptions(options);
		
		itemService.updateHotelItem(hotelItem);
		
		return "redirect:/item/registerItemHotel.do?no=" + hotelItemForm.getCpNo() + "&htNo=" + hotelItemForm.getHtNo();
	}
	
	
	
	
// -------------------Resort-------------------------------
	private boolean isExist(Set<ResortItemForm> set, ResortItemForm item) {
		
		for (ResortItemForm form : set) {
			if (form.getRsNo() == item.getRsNo()) {
				return true;
			}
		} 
		return false;
	}
	
	@RequestMapping("/registerItemResort.do")
	public String registerItemResort(@LoginUser User user, Model model, @RequestParam("no") int cpNo) {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		
		List<ResortItemForm> items = itemService.getResortItemList(cpNo);
		
		Set<ResortItemForm> set = new HashSet<ResortItemForm>();
		
		for (ResortItemForm item : items) {
			if (!isExist(set, item)) {
				set.add(item);
			}
		}
		
		List<ResortItem> resortNames = itemService.allResortItemName();
		
		model.addAttribute("resortItems", items);
		model.addAttribute("resortItems2", set);
		model.addAttribute("resortNames", resortNames);
		
		return "users/company/registerItemResort.jsp";
	}
	
	@RequestMapping("/addResortItem.do")
	public String addResortItem(ResortItemForm resortItemForm) throws Exception {
		
		ResortItem resortItem = new ResortItem();
		BeanUtils.copyProperties(resortItemForm, resortItem);
		
		resortItem.setNo(resortItemForm.getRiNo());
		resortItem.setName(resortItemForm.getRiName());
		resortItem.setType(resortItemForm.getRiType());
		resortItem.setPrice(resortItemForm.getRiPrice());
		resortItem.setCount(resortItemForm.getRiCount());
		resortItem.setRsNo(resortItemForm.getRsNo());
		
		MultipartFile upfile = resortItemForm.getRiImg();
		if (!upfile.isEmpty()) {
			String filename = "resortItem-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			resortItem.setImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		itemService.addResortItem(resortItem);
		
		return "redirect:/item/registerItemResort.do?no=" + resortItemForm.getCpNo() + "&rsNo=" + resortItemForm.getRsNo();
	}
	
	@RequestMapping("/delResortItem.do")
	public String delResortItem(@RequestParam("no") int riNo, @RequestParam("cpNo") int cpNo, @RequestParam("rsNo") int rsNo) {
		
		itemService.delResortItem(riNo);
		
		return "redirect:/item/registerItemResort.do?no=" + cpNo + "&rsNo=" + rsNo;
	}
	
	@RequestMapping("/updateResortItem.do")
	public String updateResortItem(ResortItemForm resortItemForm) throws Exception {
		
		ResortItem resortItem = new ResortItem();
		BeanUtils.copyProperties(resortItemForm, resortItem);
		
		resortItem.setNo(resortItemForm.getRiNo());
		resortItem.setName(resortItemForm.getRiName());
		resortItem.setType(resortItemForm.getRiType());
		resortItem.setPrice(resortItemForm.getRiPrice());
		resortItem.setCount(resortItemForm.getRiCount());
		resortItem.setRsNo(resortItemForm.getRsNo());
		
		MultipartFile upfile = resortItemForm.getRiImg();
		if (!upfile.isEmpty()) {
			String filename = "resortItem-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			resortItem.setImg(filename);
			
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		
		itemService.updateResortItem(resortItem);
		
		return "redirect:/item/registerItemResort.do?no=" + resortItemForm.getCpNo() + "&rsNo=" + resortItemForm.getRsNo();
	}
	
	
	// -------------------Recommend Site-------------------------------
	@RequestMapping("registerSite.do")
	public String registerSite(int no, Model model) {
		List<Site> sites = siteService.selectSite(no);
		model.addAttribute("sites", sites);
		return "users/company/registerSite.jsp";
	}
	
	@RequestMapping("addSite.do")
	public String addSite(SiteForm siteform, Model model) throws Exception{
		Site site = new Site();
		site.setName(siteform.getName());
		site.setUrl(siteform.getUrl());
		site.setContents(siteform.getContents());
		site.setLocationLat(siteform.getLocationLat());
		site.setLocationLng(siteform.getLocationLng());
		site.setCpNo(siteform.getCpNo());
		
		MultipartFile upfile = siteform.getImage();
		if(!upfile.isEmpty()){
			String filename =upfile.getOriginalFilename();
			site.setImage("site-" + filename);
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, "site-" + filename));
		}
		siteService.addSite(site);
		
		return "redirect:/item/registerSite.do?no="+site.getCpNo();
	}
	
	@RequestMapping("deleteSite.do")
	public String deleteSite(@RequestParam String url, @RequestParam int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("url", url);
		map.put("no", no);
		siteService.deleteSite(map);
		return "redirect:/item/registerSite.do?no="+no;
	}
	
}



