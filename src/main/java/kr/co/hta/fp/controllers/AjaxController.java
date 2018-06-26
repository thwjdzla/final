package kr.co.hta.fp.controllers;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hta.fp.annotation.LoginUser;
import kr.co.hta.fp.dao.ReserveDao;
import kr.co.hta.fp.form.CompanyForm;
import kr.co.hta.fp.form.ItemForm;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.form.QuestionForm;
import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.form.ReviewCriteria;
import kr.co.hta.fp.form.UserJoinForm;
import kr.co.hta.fp.service.BoardService;
import kr.co.hta.fp.service.CompanyService;
import kr.co.hta.fp.service.ItemService;
import kr.co.hta.fp.service.PackageService;
import kr.co.hta.fp.service.ReserveService;
import kr.co.hta.fp.service.ReviewService;
import kr.co.hta.fp.service.SearchService;
import kr.co.hta.fp.service.SimpleMailService;
import kr.co.hta.fp.service.SiteService;
import kr.co.hta.fp.service.UserService;
import kr.co.hta.fp.service.WishlistService;
import kr.co.hta.fp.utils.StringUtil;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.PackageReceiver;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.PointList;
import kr.co.hta.fp.vo.Reserve;
import kr.co.hta.fp.vo.Site;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.Company;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.Wishlist;
import kr.co.hta.fp.vo.board.AdminQuestion;
import kr.co.hta.fp.vo.board.FAQ;
import kr.co.hta.fp.vo.board.Review;
import kr.co.hta.fp.vo.concert.ConcertItem;
import kr.co.hta.fp.vo.hotel.HotelItem;
import kr.co.hta.fp.vo.hotel.HotelItemOption;
import kr.co.hta.fp.vo.resort.ResortItem;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	/*	예시)
		@Autowired
		private BookService bookService;
		
		@RequestMapping("/search.do")
		public @ResponseBody Map<String, Object> search(Criteria c) {
			Map<String, Object> map = new HashMap<>();
			
			List<Book> books = bookService.searchBooks(c);
			if (books.isEmpty()) {
				map.put("success", false);
			} else {
				map.put("success", true);
				map.put("items", books);
			}
			
			return map;
		}
	 */

	@Value("${image.saved.directory}")
	private String directory;
	
	@Autowired
	private SiteService siteService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private PackageService packageService;
	@Autowired
	private ItemService itemService;
	@Autowired
	private UserService userService;	
	@Autowired
	private ReserveService reserveService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private SimpleMailService simpleMailService;
	
	private String getAuthenticationNumber() {
		String[] numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N"};
		Random random = new Random();
		String text = "";
		
		for (int i=0; i<6; i++) {
			text += numbers[random.nextInt(numbers.length)];
		}
		return text;
	}
		
	@RequestMapping("/site.do") 
	public @ResponseBody List<Site> selectSite(int no){
		return siteService.selectSite(no);
	}
	
	@RequestMapping(value="/review.do", method=RequestMethod.GET)
	public @ResponseBody List<Review> selectReview(ReviewCriteria reviewCriteria){
		return reviewService.selectReview(reviewCriteria);
	}
	@RequestMapping(value="/review.do", method=RequestMethod.POST)
	public @ResponseBody List<Review> insertReview(Review review) {
		reviewService.insertReview(review);
		ReviewCriteria reviewCriteria = new ReviewCriteria();
		reviewCriteria.setNo(review.getCpNo());
		reviewCriteria.setCount(0);
		return reviewService.selectReview(reviewCriteria);
	}
	
	@RequestMapping(value="/getUser.do", method=RequestMethod.GET)
	public @ResponseBody User getUserByNo(@RequestParam("no") int no) {
		return userService.getUserByNo(no);
	}
	
	@RequestMapping(value="/getUserPaNo.do", method=RequestMethod.GET)
	public @ResponseBody User getUserByPaNo(@RequestParam("no") int no) {
		return userService.getUserByPaNo(no);
	}
	
	@RequestMapping(value="/pa.do", method=RequestMethod.GET)
	public @ResponseBody PackageApplicant packageApplicantDetail(@RequestParam("no") int no) {
		return packageService.getPackageApplicantByNo(no);
	}
	
	@RequestMapping(value="getItemAll.do", method=RequestMethod.GET)
	public @ResponseBody List<ItemForm> getItemAllByType(@RequestParam("no") int no, @RequestParam("type2") String type) {
		
		List<ItemForm> list = new ArrayList<ItemForm>();

		if ("H".equals(type)) {
			list = itemService.getHotelItemsByNo(no);
		} else if ("C".equals(type)) {
			list = itemService.getConcertItemsByNo(no);
		} else if ("R".equals(type)) {
			list = itemService.getResortItemsByNo(no);
		}
		
		return list;
	}
	
	@RequestMapping(value="getPrBypaNo.do", method=RequestMethod.GET)
	public @ResponseBody List<PackageReceiver> getPackageReceiverBypaNo(@RequestParam("no") int no) {
		return packageService.getPackageReceiverBypaNo(no);
	}
	@RequestMapping(value="pabypr.do", method=RequestMethod.GET)
	public @ResponseBody List<PackageReceiver> getPaByPr(@RequestParam("no") int no) {
		return packageService.getPabyPr(no);
	}
	
	@RequestMapping(value="getItem.do", method=RequestMethod.GET)
	public @ResponseBody ItemForm getItemByNo(@RequestParam("ino") int no, @RequestParam("type") String type) {
		
		ItemForm itemForm = new ItemForm();
		
		if ("H".equals(type)) {
			HotelItem hotelItem = itemService.getHotelItemByNo(no);
			itemForm.setNo(hotelItem.getNo());
			itemForm.setName(hotelItem.getName());
			itemForm.setPrice(hotelItem.getPrice());
			itemForm.setImg(hotelItem.getImg());
			
		} else if ("C".equals(type)) {
			ConcertItem concertItem = itemService.getConcertItemByNo(no);
			itemForm.setNo(concertItem.getNo());
			itemForm.setName(concertItem.getName());
			itemForm.setPrice(concertItem.getPrice());
			itemForm.setImg(concertItem.getImg());
		} else if ("R".equals(type)) {
			ResortItem resortItem = itemService.getResortItemByNo(no);
			itemForm.setNo(resortItem.getNo());
			itemForm.setName(resortItem.getName());
			itemForm.setPrice(resortItem.getPrice());
			itemForm.setImg(resortItem.getImg());
		}
		
		return itemForm;
	}
	
	@RequestMapping("deletereview.do")
	public @ResponseBody List<Review> deleteReview(Review review){
		reviewService.deleteReview(review.getNo());
		ReviewCriteria reviewCriteria = new ReviewCriteria();
		reviewCriteria.setNo(review.getCpNo());
		reviewCriteria.setCount(0);
		return reviewService.selectReview(reviewCriteria);
	}
	
	@RequestMapping("updatereview.do")
	public @ResponseBody List<Review> updateReview(Review review){
		reviewService.updateReview(review);
		ReviewCriteria reviewCriteria = new ReviewCriteria();
		reviewCriteria.setNo(review.getCpNo());
		reviewCriteria.setCount(0);
		return reviewService.selectReview(reviewCriteria);
	}
	
	@RequestMapping("packageList.do")
	public @ResponseBody List<Package> packageList(@RequestParam("no") int no, @RequestParam("type") String type){
		if("H".equals(type)) {
			return packageService.getPackagebyHotel(no);
		}
		else if ("C".equals(type)) {
			return packageService.getPackagebyConcert(no);
		}
		else if ("R".equals(type)) {
			return packageService.getPackagebyResort(no);
		}
		return null;
	}
	
	@RequestMapping("dif.do")
	public @ResponseBody long difDate(String firstDate, String secondDate) throws Exception {
		return StringUtil.subtractDate2(firstDate, secondDate);
	}
	
	@RequestMapping("reservecheck.do")
	public @ResponseBody Boolean reservecheck(ProductInfo productInfo){
		Boolean possible;
		HotelItem item = itemService.getHotelItemByNo(productInfo.getNo());
		if(item.getCount() > reserveService.getItemReserve(productInfo))
			possible = true;
		else
			possible = false;
		return possible;
	}
	
	@RequestMapping("reserveItemAdd.do")
	public @ResponseBody String reserveItemAdd(ProductInfo productInfo) {
		packageService.addOneItemPackage(productInfo);
		String success = reserveService.getReserveSuccess(productInfo);
		if ("true".equals(success)) {
			success = packageService.getOnePackageByProductInfo(productInfo);
		}
		return success;
	}
	
	@RequestMapping("pageCompanyAdmin.do")
	public @ResponseBody List<CompanyForm> getAllCompany(Pagination pagination) {
		return companyService.getAllCompany(pagination);
	}
	
	@RequestMapping("pageSubmitCompany.do")
	public @ResponseBody List<CompanyForm> getSubmitCompany(Pagination pagination) {
		return companyService.getCompanyByStatus(pagination);
	}
	
	@RequestMapping("getAllUsers.do")
	public @ResponseBody List<User> getAllUserByStatus(Pagination pagination) {
		return userService.getAllUsersByType(pagination);
	}
	
	@RequestMapping("packagelist.do")
	public @ResponseBody List<PackageApplicant> packagelist(Pagination pagination) {
		return packageService.getPackageBoardList(pagination);
	}
	
	@RequestMapping("packageReceiver.do")
	public @ResponseBody List<PackageApplicant> packageReceiver(@LoginUser User user, Pagination pagination) {
		pagination.setNo(user.getNo());
		return packageService.getMyPackageReceiverByNo(pagination);
	}
	
	@RequestMapping("packageApplicant.do")
	public @ResponseBody List<PackageApplicant> packageApplicant(@LoginUser User user, Pagination pagination) {
		pagination.setNo(user.getNo());
		return packageService.getMyPackageApplicantByNo(pagination);
	}
	
	@ResponseBody
	@RequestMapping(value="idcheck.do", method=RequestMethod.GET)
	public String searchById(String userid) {
		return userService.searchById(userid) != null ? "exist" : "empty";
	}
	
	@ResponseBody
	@RequestMapping(value="optionList.do", method=RequestMethod.GET)
	public List<HotelItemOption> getHotelItemOptions(@RequestParam("oNo") int hiNo) {
		return itemService.getHotelItemOptions(hiNo);
	}
	
	@RequestMapping("allFAQList.do")
	public @ResponseBody List<FAQ> allFAQList(Pagination pagination) {
		return boardService.allFAQList(pagination);
	}
	
	@RequestMapping("allQuestionList.do")
	public @ResponseBody List<QuestionForm> allQuestionList(@LoginUser User user, Pagination pagination) {
		
		List<Company> cpNoList = boardService.getCpNo(user.getNo());
		
		pagination.setNo(user.getNo());
		pagination.setType(user.getType());
		pagination.setCompanies(cpNoList);
		
		return boardService.allQuestionList(pagination);
	}
	
	@ResponseBody
	@RequestMapping(value="userReserveList.do", method=RequestMethod.POST)
	public List<ReserveStringForm> userReserveList(@RequestBody Map<String, Object> map) throws Exception{
		List<ReserveStringForm> reserves = reserveService.getUserReserveListPaging(map);
		return reserves;
	}
	
	@ResponseBody
	@RequestMapping(value="companyReserveList.do", method=RequestMethod.POST)
	public List<ReserveStringForm> companyReserveList(@RequestBody Map<String, Object> map) throws Exception{
		map = reserveService.getCpMap(map);
		List<ReserveStringForm> reserves = reserveService.getCompanyReserveListPaging(map);
		return reserves;
	}
	
	@RequestMapping("userReserveListCount.do")
	public @ResponseBody int userReserveListCount(@RequestBody Map<String, Object> map) {
		int count = reserveService.getUserReserveCount(map);
		return count;
	}
	
	@RequestMapping("companyReserveListCount.do")
	public @ResponseBody int companyReserveListCount(@RequestBody Map<String, Object> map) {
		map = reserveService.getCpMap(map);
		int count = reserveService.getCompanyReserveCount(map);
		return count;
	}
	
	@RequestMapping("allAdminQuestionList.do")
	public @ResponseBody List<AdminQuestion> allAdminQuestionList(@LoginUser User user, Pagination pagination) {
		
		pagination.setNo(user.getNo());
		pagination.setType(user.getType());
		
		return boardService.allAdminQuestionList(pagination);
	}
	
	@RequestMapping("companyAdminQuestionList.do")
	public @ResponseBody List<AdminQuestion> companyAdminQuestionList(Pagination pagination) {
		return boardService.companyAdminQuestionList(pagination);
	}
	
	@RequestMapping("userAdminQuestionList.do")
	public @ResponseBody List<AdminQuestion> userAdminQuestionList(Pagination pagination) {
		return boardService.userAdminQuestionList(pagination);
	}
	
	@RequestMapping("/sendMail.do")
	@ResponseBody
	public String sendMail(UserJoinForm userJoinForm, HttpSession session) {
		try {
			String email = userJoinForm.getEmailid() + "@" + userJoinForm.getEmailDomain();
			String numberText = getAuthenticationNumber();
			String text = "인증번호 : " + numberText;
			
			session.setAttribute("confirmNumber", numberText);
			session.setAttribute("pass", false);
			session.setAttribute("emailid", userJoinForm.getEmailid());			
			session.setAttribute("emailDomain", userJoinForm.getEmailDomain());			
			
			simpleMailService.sendConfirmMail(email, text);
			return "success";
		} catch (Exception e) {
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="userPointList.do", method=RequestMethod.POST)
	public List<PointList> userPointList(@RequestBody Map<String, Object> map) {
		List<PointList> PointList = reserveService.getUserPointList(map);
		return PointList;
	}
	

	@ResponseBody
	@RequestMapping(value="searchConcertItem.do", method=RequestMethod.POST)
	public ConcertItem searchConcertItem(@RequestBody Map<String, Object> map) {
		ConcertItem item = new ConcertItem();
		item = reserveService.searchConcertItem(map);
		return item;
	}

}
