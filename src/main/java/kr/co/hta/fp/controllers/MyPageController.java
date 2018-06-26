package kr.co.hta.fp.controllers;

import java.util.List;
import java.util.Map;

import javax.imageio.spi.RegisterableService;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.form.UserJoinForm;
import kr.co.hta.fp.service.AdvertisementApplyService;
import kr.co.hta.fp.service.ReserveService;
import kr.co.hta.fp.service.UserService;
import kr.co.hta.fp.service.WishlistService;
import kr.co.hta.fp.vo.AdvertisementApply;
import kr.co.hta.fp.vo.Membership;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.Wishlist;

@Controller
public class MyPageController {
	@Autowired
	private WishlistService wishlistService;
	@Autowired
	private UserService userService;
	@Autowired
	AdvertisementApplyService advertisementApplyService;
	@Autowired
	ReserveService reserveService;
	
	@RequestMapping("wishlist.do")
	public String wishlist(int no,Model model) {
		List<Wishlist> wishlist = wishlistService.selectWishlist(no);
		model.addAttribute("wishlist",wishlist);
		return "users/customer/wishlist.jsp";
	}
	
	@RequestMapping("addwishlist.do")
	public void addWishlist(Wishlist wishlist) {
		wishlistService.addWishlist(wishlist);
	}
	
	@RequestMapping("deletewishlist")
	public String deleteWishlist(int no) {
		Wishlist wishlist = wishlistService.selectWishlistbyNo(no);
		wishlistService.deleteWishlist(no);
		return "redirect:/wishlist.do?no="+ wishlist.getUserNo();
	}
	
	@RequestMapping("planner.do")
	public String planner(Model model) {
		return "users/customer/planner.jsp";
	}	
	
	@RequestMapping("myinfo.do")
	public String myinfo(Model model, HttpSession session) {		
		User user =  (User)session.getAttribute("LOGIN_USER");
		if("U".equals(user.getType()) ) {
			Membership membership = userService.membership(user.getNo());
			model.addAttribute("membership", membership);
		}
		return "users/customer/myinfo.jsp";
	}
	
	@RequestMapping("updatemyinfo.do")
	public String updatemyinfo(UserJoinForm userForm, HttpSession session) {
		
		User user = new User();
		BeanUtils.copyProperties(userForm, user);
		 
		user.setName(userForm.getNameFirst());
		user.setEmail(userForm.getEmailid() + "@" + userForm.getEmailDomain());
		user.setPhone(userForm.getTelno1() + "-" + userForm.getTelno2() + "-" + userForm.getTelno3());
		user.setBirthday(userForm.getBirthdayyy() + userForm.getBirthdaymt() + userForm.getBirthdayde());
		user.setAddress(userForm.getAddress1() + "/" + userForm.getAddress2());
		
		if (userForm.getEmailreceipt() == null) {
			user.setEmailreceipt("N");
		}
		
		if (userForm.getSmsreceipt() == null) {
			user.setSmsreceipt("N");
		}
		
		userService.updateUser(user);
		User newuser = userService.getDetailUser(userForm.getNo(), userForm.getId());
		session.setAttribute("LOGIN_USER", newuser);
		return "redirect:/myinfo.do";
	}
	
	@RequestMapping("dropuser.do")
	public String dropuser(int no, HttpSession session) {
		userService.dropuser(no);
		session.invalidate();
		return "redirect:/home.do";
	}	
	
	@RequestMapping("adApplyform.do")
	public String adapplyform() {
		return "users/company/registerAdvertisement.jsp";
	}	
		
	@RequestMapping("addadApply.do")
	public String adapply(AdvertisementApply ad) {
		advertisementApplyService.insertAdvertisementApply(ad);
		return "redirect:/adApplyform.do";
	}
	
	@RequestMapping("showreserve.do")
	public @ResponseBody List<ReserveStringForm> resert(int no) throws Exception{
		return reserveService.getUserReserveByNo(no);
	}	
	@RequestMapping("mypageMenu.do")
	public String mypageMenu(HttpSession session) {
		if(session.getAttribute("LOGIN_USER") == null) {
			String prevPage = "mypageMenu.do";
			session.setAttribute("prevPage", prevPage);
			return "redirect:/user/login.do";
		}
		return "users/customer/mypageMenu.jsp";
	}
}
