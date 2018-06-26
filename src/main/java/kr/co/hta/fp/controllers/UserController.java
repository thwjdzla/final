package kr.co.hta.fp.controllers;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hta.fp.exception.FpException;
import kr.co.hta.fp.form.UserJoinForm;
import kr.co.hta.fp.service.SimpleMailService;
import kr.co.hta.fp.service.UserService;
import kr.co.hta.fp.vo.User;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	/*@Autowired
	private SimpleMailService simpleMailService;*/
	
	@RequestMapping("/joinconfirm.do")
	public String confirm() {
		return "users/customer/join.jsp";
	}
	
	
	/*private String getAuthenticationNumber() {
		String[] numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N"};
		Random random = new Random();
		String text = "";
		
		for (int i=0; i<6; i++) {
			text += numbers[random.nextInt(numbers.length)];
		}
		return text;
	}*/
	
	
	/*@RequestMapping("/sendMail.do")
	@ResponseBody
	public String sendMail(UserJoinForm userJoinForm, HttpSession session) {
		try {
			String email = userJoinForm.getEmailid() + "@" + userJoinForm.getEmailDomain();
			String numberText = getAuthenticationNumber();
			String text = "인증번호 : " + numberText;
			
			session.setAttribute("confirmNumber", numberText);
			session.setAttribute("pass", false);
			session.setAttribute("confirmEmail", email);			
			
			simpleMailService.sendConfirmMail(email, text);
			return "success";
		} catch (Exception e) {
			return "fail";
		}
	}*/
	
	@RequestMapping("/confirmNumber.do")
	public String confirmNumber(String number, HttpSession session) {
		
		String confirmNumber = (String) session.getAttribute("confirmNumber");
		if (confirmNumber.equals(number)) {
			session.setAttribute("pass", true);
			return "redirect:/user/joinagree.do";
			
		} else {
			return "redirect:/user/joinconfirm.do";
		}
	}
	
	@RequestMapping("/joinagree.do")
	public String agree() {
		
		return "users/customer/agree.jsp";
	}
	
	@RequestMapping("/joinform.do")
	public String form(HttpSession session) {
		Boolean pass = (Boolean) session.getAttribute("pass");
		if (pass == null || !pass) {
			return "redirect:/user/joinconfirm.do";
		}
		return "users/customer/joinform.jsp";
	}
	
	@RequestMapping("/joincomplete.do")
	public String joincomplete() {
		return "users/customer/joincomplete.jsp";
	}
	
	
	@RequestMapping("/join.do")
	public String addUser(UserJoinForm userForm, HttpSession session, Model model) {
	
		Boolean pass = (Boolean) session.getAttribute("pass");
		if (pass == null || !pass) {
			return "redirect:/user/joinconfirm.do";
		}
		
		User user = new User();
		BeanUtils.copyProperties(userForm, user);
		
		String emailid = (String) session.getAttribute("emailid");
		String emailDomain = (String) session.getAttribute("emailDomain");
		
		user.setName(userForm.getNameLast() + userForm.getNameFirst());
		user.setEmail(emailid + "@" + emailDomain);
		user.setPhone(userForm.getTelno1() + "-" + userForm.getTelno2() + "-" + userForm.getTelno3());
		user.setBirthday(userForm.getBirthdayyy() + userForm.getBirthdaymt() + userForm.getBirthdayde());
		user.setAddress(userForm.getAddress1() +"/"+ userForm.getAddress2());
		
		if (userForm.getEmailreceipt() == null) {
			user.setEmailreceipt("N");
		}
		
		if (userForm.getSmsreceipt() == null) {
			user.setSmsreceipt("N");
		}
		
		if (userService.searchById(userForm.getId()) != null) {
			throw new FpException("이미 사용중인 아이디 입니다.");
		}
		
		userService.addUser(user);
		model.addAttribute("username", userForm.getNameLast() + userForm.getNameFirst());
		return "users/customer/joincomplete.jsp"; 
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(HttpServletRequest request, HttpSession session) {	
		String referrer = request.getHeader("Referer");
		if(referrer != null) {
			//String prevPage = referrer.replaceAll("http://localhost/final/", "");
			int status = referrer.indexOf("final");
			System.out.println(referrer.substring(status+6));
			session.setAttribute("prevPage", referrer.substring(status+6));
		}
		return "users/customer/loginform.jsp";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(String id, String pwd, HttpSession session) {
		int no = 0;
		User user = userService.getDetailUser(no, id);
		if (user == null) {
			return "redirect:/user/login.do?err=fail";
		}
		if (user.getStatus().equals("탈퇴")) {
			return "redirect:/user/login.do?err=fail";
		}
		if (!user.getPwd().equals(pwd)) {
			return "redirect:/user/login.do?err=fail";
		}
	
		session.setAttribute("LOGIN_USER", user);
		String redirectUrl = (String)session.getAttribute("prevPage");
		String[] url = redirectUrl.split("/");
		if(redirectUrl != null && redirectUrl.contains("login.do") == false && redirectUrl.contains("join") == false)
			return "redirect:/" + redirectUrl;
		return "redirect:/home.do";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/home.do";
	}
}




