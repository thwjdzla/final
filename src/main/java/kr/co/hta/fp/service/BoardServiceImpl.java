package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.BoardDao;
import kr.co.hta.fp.dao.CompanyDao;
import kr.co.hta.fp.dao.ConcertDao;
import kr.co.hta.fp.dao.HotelDao;
import kr.co.hta.fp.dao.ResortDao;
import kr.co.hta.fp.form.QuestionForm;
import kr.co.hta.fp.vo.Company;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.board.AdminAnswer;
import kr.co.hta.fp.vo.board.AdminQuestion;
import kr.co.hta.fp.vo.board.Answer;
import kr.co.hta.fp.vo.board.FAQ;
import kr.co.hta.fp.vo.board.Question;
import kr.co.hta.fp.vo.concert.Concert;
import kr.co.hta.fp.vo.hotel.Hotel;
import kr.co.hta.fp.vo.resort.Resort;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private ConcertDao concertDao;
	
	@Autowired
	private HotelDao hotelDao;
	
	@Autowired
	private ResortDao resortDao;
	
	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private CompanyDao companyDao;
	
	@Override
	public List<Concert> getConcertRegisteredList(int userNo) {
		return concertDao.getConcertRegisteredList(userNo);
	}
	
	@Override
	public List<Hotel> getHotelRegisteredList(int userNo) {
		return hotelDao.getHotelRegisteredList(userNo);
	}
	
	@Override
	public List<Resort> getResortRegisteredList(int userNo) {
		return resortDao.getResortRegisteredList(userNo);
	}
	
	@Override
	public List<FAQ> allFAQList(Pagination pagination) {
		return boardDao.allFAQList(pagination);
	}
	
	@Override
	public void submitQuestion(Question question) {
		boardDao.submitQuestion(question);
	}
	
	@Override
	public List<Company> allCompany() {
		return companyDao.allCompany();
	}
	
	@Override
	public void submitAdminQuestion(AdminQuestion adminQuestion) {
		boardDao.submitAdminQuestion(adminQuestion);
	}
	
	/*@Override
	public List<QuestionForm> allQuestionList(Map<String, Object> searchqna) {
		return boardDao.allQuestionList(searchqna);
	}*/
	
	@Override
	public List<QuestionForm> allQuestionList(Pagination pagination) {
		return boardDao.allQuestionList(pagination);
	}
	
	/*@Override
	public List<AdminQuestion> allAdminQuestionList(Map<String, Object> searchqna) {
		return boardDao.allAdminQuestionList(searchqna);
	}*/
	
	@Override
	public List<AdminQuestion> allAdminQuestionList(Pagination pagination) {
		return boardDao.allAdminQuestionList(pagination);
	}
	
	@Override
	public List<Company> getCpNo(int no) {
		return companyDao.getCpNo(no);
	}
	
	@Override
	public QuestionForm getQuestionByNo(int questionNo) {
		return boardDao.getQuestionByNo(questionNo);
	}
	
	@Override
	public void addAnswer(Answer answer) {
		boardDao.addAnswer(answer);
	}
	@Override
	public Answer getAnswerByNo(int questionNo) {
		return boardDao.getAnswerByNo(questionNo);
	}
	
	@Override
	public AdminAnswer getAdminAnswerByNo(int questionNo) {
		return boardDao.getAdminAnswerByNo(questionNo);
	}
	@Override
	public void addAdminAnswer(AdminAnswer adminAnswer) {
		boardDao.addAdminAnswer(adminAnswer);
	}
	
	@Override
	public AdminQuestion getAdminQuestionByNo(int questionNo) {
		return boardDao.getAdminQuestionByNo(questionNo);
	}
	@Override
	public void modifyQStatus(int questionNo) {
		boardDao.modifyQStatus(questionNo);
	}
	
	@Override
	public void modifyAStatus(int questionNo) {
		boardDao.modifyAStatus(questionNo);
	}
	
	@Override
	public int getAllFAQCount() {
		return boardDao.getAllFAQCount();
	}
	
	@Override
	public int getAllQuestionCount(Pagination pagination) {
		return boardDao.getAllQuestionCount(pagination);
	}
	
	@Override
	public int getAllAdminQuestionCount(Pagination pagination) {
		return boardDao.getAllAdminQuestionCount(pagination);
	}
	
	@Override
	public int CadminCount() {
		return boardDao.CadminCount();
	}
	
	@Override
	public int UadminCount() {
		return boardDao.UadminCount();
	}
	
	@Override
	public List<AdminQuestion> companyAdminQuestionList(Pagination pagination) {
		return boardDao.companyAdminQuestionList(pagination);
	}
	
	@Override
	public List<AdminQuestion> userAdminQuestionList(Pagination pagination) {
		return boardDao.userAdminQuestionList(pagination);
	}
}
