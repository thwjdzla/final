package kr.co.hta.fp.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hta.fp.service.ItemService;
import kr.co.hta.fp.service.SearchService;
import kr.co.hta.fp.vo.DaumMap;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.resort.Resort;
import kr.co.hta.fp.vo.resort.ResortItem;

@Controller
public class SearchController2 {
	@Autowired
	private SearchService searchservice;
	
	@Autowired
	private ItemService itemService;

	
	
	@RequestMapping("/searchMap.do")
	public @ResponseBody List<DaumMap> searchHotels(double lowLat, double highLat, double lowLon, double highLon) {
		Map<String, Double> map = new HashMap<String, Double>();
		map.put("lowLat", lowLat);
		map.put("highLat", highLat);
		map.put("lowLon", lowLon);
		map.put("highLon", highLon);
	
		List<DaumMap> hotels = searchservice.searchhotelall(map);
		List<DaumMap> resorts = searchservice.searchresortall(map);
		List<DaumMap> concerts = searchservice.searchconcertall(map);
		
		List<DaumMap> all = new ArrayList<DaumMap>();
		all.addAll(hotels);
		all.addAll(resorts);
		all.addAll(concerts);
		
		
		return all;
	}
	
	
	
	
	
	@RequestMapping("/getHotels.do")
	public String getHotels(Model model) {
		List<Hotel> hotels = searchservice.searchAllHotelList();
		model.addAttribute("items", hotels);
		
		for (Hotel hotel : hotels) {
			hotel.setItems(searchservice.searchAllHotelItemList(hotel.getNo()));
		}
		model.addAttribute("type","H");

		return "main/search.jsp";
	}
	
	
	//=================================================
	
	
	
	@RequestMapping("/getconcert.do")
	public String getconcert(Model model) {
		List<Concert> concerts = searchservice.searchAllConcertList();
		model.addAttribute("items", concerts);
		
		for (Concert concert : concerts) {
			concert.setItems(searchservice.searchAllConcertItemList(concert.getNo()));
		}
		model.addAttribute("type","C");
		return "main/search.jsp";
	}
	
	//=================================================
	
	
	
	@RequestMapping("/getresort.do")
	public String getresort(Model model) {
		List<Resort> resorts = searchservice.searchAllResortList();
		model.addAttribute("items", resorts);
		
		for (Resort resort : resorts) {
			resort.setItems(searchservice.searchAllResortItemList(resort.getNo()));
		}
		model.addAttribute("type","R");
		return "main/search.jsp";
	}
	
	
	
	
	
	@RequestMapping("/getpackage.do")
	public String getpackage(Model model) {
		List<Package> packages = searchservice.searchpackageall(); 
		model.addAttribute("items", packages);

		for (Package packagea : packages) {		//hotelitemno
			
			//if(packagea.getPaNo() != null) {
				//if(packagea.getHotelNo() != null) {
					HotelItem HI = searchservice.searchHotelItem(packagea.getHotelNo());
					packagea.setHotelitem(searchservice.searchHotelByHno(HI.getHotelNo()));
					System.out.println(searchservice.searchHotelByno(HI.getHotelNo()));
				//}
				
				if(packagea.getConcertNo() != null) {
					ConcertItem CI = searchservice.searchConcertItem(packagea.getConcertNo());
					packagea.setConcertitem(searchservice.searchConcertByCno(CI.getCcNo()));
					System.out.println("concert : " + CI.getCcNo());
				}
				
				if(packagea.getResortNo() != null) {
					ResortItem RI = searchservice.searchResortItem(packagea.getResortNo());
					packagea.setResortitem(searchservice.searchResortByno(RI.getRsNo()));
				}
				
			//}
			

			
		}

		model.addAttribute("type","P");
		
		return "main/search.jsp";
	}
	
	
	@ResponseBody
	@RequestMapping(value="searchByname.do", method=RequestMethod.GET)
	public List<?> searchByname(Model model, String searchkeyword, String type) {
		
		if(type.equals("H")) {
			List<Hotel> hotels = searchservice.searchHotelByname(searchkeyword);
			model.addAttribute("searchitems", hotels);
			
			for (Hotel hotel : hotels) {
				hotel.setItems(searchservice.searchAllHotelItemList(hotel.getNo()));
			}
			return hotels;
		}
		else if(type.equals("C")) {
			List<Concert> concerts = searchservice.searchConcertByname(searchkeyword);
			model.addAttribute("searchitems", concerts);
			
			for (Concert concert : concerts) {
				concert.setItems(searchservice.searchAllConcertItemList(concert.getCcNo()));
			}
			return concerts;
		}
		else if(type.equals("R")) {
			List<Resort> resorts = searchservice.searchResortByname(searchkeyword);
			model.addAttribute("searchitems", resorts);
			
			for (Resort resort : resorts) {
				resort.setItems(searchservice.searchAllResortItemList(resort.getNo()));
			}
			return resorts;
		}
		else if(type.equals("P")) {
			List<Package> packages = searchservice.searchPackageByname(searchkeyword);
			
			for (Package packagea : packages) {
				HotelItem hotelItem = itemService.getHotelItemByNo(packagea.getHotelNo());
				packagea.setHotelitem(searchservice.searchHotelByHno(hotelItem.getHotelNo()));
			}
			
			for (Package packagea : packages) {
				if (packagea.getConcertNo() != null) {
					ConcertItem concertItem = itemService.getConcertItemByNo(packagea.getConcertNo());
					packagea.setConcertitem(searchservice.searchConcertByCno(concertItem.getCcNo()));
				}
			}

			
			for (Package packagea : packages) {
				if (packagea.getResortNo() != null) {
					ResortItem resortItem = itemService.getResortItemByNo(packagea.getResortNo());
					packagea.setResortitem(searchservice.searchResortByRno(resortItem.getRsNo()));
				}
			}


			model.addAttribute("searchitems", packages);
			System.out.println(packages);
			return packages;
		}
		
		return Arrays.asList();
	}
}














