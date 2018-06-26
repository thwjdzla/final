package kr.co.hta.fp.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hta.fp.form.CompanyForm;
import kr.co.hta.fp.form.UserJoinForm;
import kr.co.hta.fp.service.CompanyService;
import kr.co.hta.fp.service.UserService;
import kr.co.hta.fp.vo.User;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UserService userService;
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("/customerlist.do")
	public String customerlist(Model model) {
		
		String type = "U";
		
		//List<User> users = userService.getAllUsersByType(type);
		//model.addAttribute("users", users);
		int companyCount = userService.getAllUserCount(type);
		int page = (int)(Math.ceil((double)companyCount/10));
		model.addAttribute("page", page);
		
		return "users/admin/customerlist.jsp";
	}
	
	@RequestMapping("/companylist.do")
	public String companylist(Model model) {
		
		String type = "C";
		
		//List<User> users = userService.getAllUsersByType(type);
		//model.addAttribute("users", users);
		int companyCount = userService.getAllUserCount(type);
		int page = (int)(Math.ceil((double)companyCount/10));
		model.addAttribute("page", page);
		
		return "users/admin/companylist.jsp";
	}
	
	@RequestMapping("detail.do")
	public String userDetail(@RequestParam("no") int userNo, Model model) {
		
		String id = "";
		User user = userService.getDetailUser(userNo, id);
		model.addAttribute("user", user);
		
		return "users/admin/customerinfo.jsp";
	}
	
	@RequestMapping("status.do")
	public String statusUpdate(@RequestParam("su") String status, @RequestParam("no") int no) {
		
		String sendRedirect = userService.updateStatus(status, no);
		
		return sendRedirect;
	}
	
	@RequestMapping("companydetail.do")
	public String companydetail(@RequestParam("no") int no, Model model) {
		return "users/admin/companydetail.jsp";
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
		session.setAttribute("user", newuser);
		return "redirect:/admin/detail.do?no="+userForm.getNo();
	}
	
	@RequestMapping("userlist.do")
	public String userlist(@RequestParam("type") String type) {
		if (type.equals("U")) {
			return "redirect:/admin/customerlist.do";
		}
		return "redirect:/admin/companylist.do";
	}
	
	@RequestMapping("companyadmin.do")
	public String companyadmin(Model model) {
		
		//List<CompanyForm> companys = companyService.getAllCompany();
		//model.addAttribute("companys", companys);
		
		int companyCount = companyService.getAllCountByCompany();
		int page = (int)(Math.ceil((double)companyCount/10));
		model.addAttribute("page", page);
		
		return "users/admin/companyadmin.jsp";
	}
	
	@RequestMapping("sbcompany.do")
	public String sbcompany(Model model) {
		
		String status = "N";
		
		//List<CompanyForm> companys = companyService.getCompanyByStatus(status);
		//model.addAttribute("companys", companys);
		
		int companyCount = companyService.getCountByCompanyStatus(status);
		int page = (int)(Math.ceil((double)companyCount/10));
		model.addAttribute("page", page);
		
		return "users/admin/submitcompany.jsp";
	}
	
	@RequestMapping("sccompany.do")
	public String sccompany(Model model) {
		
		String status = "Y";
		
		//List<CompanyForm> companys = companyService.getCompanyByStatus(status);
		//model.addAttribute("companys", companys);
		
		int companyCount = companyService.getCountByCompanyStatus(status);
		int page = (int)(Math.ceil((double)companyCount/10));
		model.addAttribute("page", page);
		
		return "users/admin/successcompany.jsp";
	}
	
	@RequestMapping("updateCompany.do")
	public String modify(@RequestParam("cpno") int no, @RequestParam("st") String status) {
		
		Map<String, Object> usCompany = new HashMap<String, Object>();
		usCompany.put("cpNo", no);
		usCompany.put("status", status);
		
		companyService.updateStatusCompany(usCompany);
		
		return "redirect:/admin/sbcompany.do";
	}
}
