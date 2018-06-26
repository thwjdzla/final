package kr.co.hta.fp.controllers;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import kr.co.hta.fp.form.QuestionForm;
import kr.co.hta.fp.service.BoardService;
import kr.co.hta.fp.views.DownloadView;
import kr.co.hta.fp.vo.Company;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.board.AdminAnswer;
import kr.co.hta.fp.vo.board.AdminQuestion;
import kr.co.hta.fp.vo.board.Answer;
import kr.co.hta.fp.vo.board.FAQ;
import kr.co.hta.fp.vo.board.Question;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Value("${image.saved.directory}")
	private String directory;
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private DownloadView downloadView;
	
	@RequestMapping("/registeredList.do")
	public String list(@LoginUser User user,  Model model) {
		
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		
		model.addAttribute("concerts", boardService.getConcertRegisteredList(user.getNo()));
		
		model.addAttribute("hotels", boardService.getHotelRegisteredList(user.getNo()));
		
		model.addAttribute("resorts", boardService.getResortRegisteredList(user.getNo()));
		
		return "users/company/registeredList.jsp";
	}
	
	@RequestMapping("/question.do")
	public String customerQuestion(@LoginUser User user, Model model) {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		List<Company> companys = boardService.allCompany();
		
		model.addAttribute("companys", companys);
		return "board/customerQuestion.jsp";
	}
	
	@RequestMapping("/adminQuestion.do")
	public String adminQuestion(@LoginUser User user) throws Exception {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		return "board/adminQuestion.jsp";
	}
	
	@RequestMapping("/FAQ.do")
	public String faq(Model model) {
		/*List<FAQ> faqs = boardService.allFAQList();
		
		model.addAttribute("faqs", faqs);*/
		
		int faqCount = boardService.getAllFAQCount();
		int page = (int)(Math.ceil((double)faqCount/10));
		model.addAttribute("page", page);
		
		return "board/faq.jsp";
	}
	
	@RequestMapping("/submitQuestion.do")
	public String submitQuestion(@LoginUser User user, Question question) throws Exception {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		question.setUserNo(user.getNo());
		
		MultipartFile upfile = question.getUpfile();
		if (!upfile.isEmpty()) {
			String filename = "question-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			question.setImg(filename);
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		boardService.submitQuestion(question);
		
		return "redirect:/board/myQnA.do";
	}
	
	@RequestMapping("/submintAdminQuestion.do")
	public String submintAdminQuestion(@LoginUser User user, AdminQuestion adminQuestion) throws Exception {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		
		adminQuestion.setUserNo(user.getNo());
		
		MultipartFile upfile = adminQuestion.getUpfile();
		if (!upfile.isEmpty()) {
			String filename = "adminQuestion-" + System.currentTimeMillis() + upfile.getOriginalFilename();
			adminQuestion.setImg(filename);
			FileCopyUtils.copy(upfile.getBytes(), new File(directory, filename));
		}
		boardService.submitAdminQuestion(adminQuestion);
		
		return "redirect:/board/myQnA.do";
	}
	
	@RequestMapping("/myQnA.do")
	public String myQnA(@LoginUser User user, Model model) {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		/*List<Company> cpNoList = boardService.getCpNo(user.getNo());
		
		Map<String, Object> searchqna = new HashMap<String, Object>();
		searchqna.put("no", user.getNo());
		searchqna.put("type", user.getType());
		searchqna.put("companies", cpNoList);
		
		List<QuestionForm> questionList = boardService.allQuestionList(searchqna);
		List<AdminQuestion> allAdminQuestionList = boardService.allAdminQuestionList(searchqna);
		
		model.addAttribute("questionList", questionList);
		model.addAttribute("allAdminQuestionList", allAdminQuestionList);*/
		
		List<Company> cpNoList = boardService.getCpNo(user.getNo());
		
		Pagination pagination = new Pagination();
		pagination.setNo(user.getNo());
		pagination.setType(user.getType());
		pagination.setCompanies(cpNoList);
		
		int questionCount = boardService.getAllQuestionCount(pagination);
		int adminQuestionCount = boardService.getAllAdminQuestionCount(pagination);
		int CadminCount = boardService.CadminCount();
		int UadminCount = boardService.UadminCount();
		int page = (int)(Math.ceil((double)questionCount/10));
		int page2 = (int)(Math.ceil((double)adminQuestionCount/10));
		int page3 = (int)(Math.ceil((double)CadminCount/10));
		int page4 = (int)(Math.ceil((double)UadminCount/10));
		model.addAttribute("page", page);
		model.addAttribute("page2", page2);
		model.addAttribute("page3", page3); // Cadmin
		model.addAttribute("page4", page4); // Uadmin
		
		return "board/myQnA.jsp";
	}
	
	@RequestMapping("/companyAnswer.do")
	public String companyAnswer(@LoginUser User user, Model model, @RequestParam("no") int questionNo) {
		
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		
		QuestionForm question = boardService.getQuestionByNo(questionNo);
		model.addAttribute("question", question);
		
		Answer answer = boardService.getAnswerByNo(questionNo);
		model.addAttribute("answer", answer);
		return "board/companyAnswer.jsp";
	}
	
	@RequestMapping("/addCompanyAnswer.do")
	public String addAnswer(@LoginUser User user, Answer answer) {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		boardService.addAnswer(answer);
		boardService.modifyQStatus(answer.getQuestionNo());
		return "redirect:/board/companyAnswer.do?no="+answer.getQuestionNo();
	}
	
	@RequestMapping("/adminAnswer.do")
	public String adminAnswer(@LoginUser User user, Model model, @RequestParam("aNo") int adminQuestionNo) {
		
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		AdminQuestion adminQuestion = boardService.getAdminQuestionByNo(adminQuestionNo);
		model.addAttribute("adminQuestion", adminQuestion);
		
		AdminAnswer adminAnswer = boardService.getAdminAnswerByNo(adminQuestionNo);
		model.addAttribute("adminAnswer", adminAnswer);
		
		return "board/adminAnswer.jsp";
	}
	
	@RequestMapping("/addAdminAnser.do")
	public String addAdminAnswer(@LoginUser User user, AdminAnswer adminAnswer) {
		if (user == null) {
			throw new FpException("로그인이 필요한 페이지 입니다.");
		}
		boardService.addAdminAnswer(adminAnswer);
		boardService.modifyAStatus(adminAnswer.getQuestionNo());
		return "redirect:/board/adminAnswer.do?aNo="+adminAnswer.getQuestionNo();
	}
}
