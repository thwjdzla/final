package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.form.QuestionForm;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.board.AdminAnswer;
import kr.co.hta.fp.vo.board.AdminQuestion;
import kr.co.hta.fp.vo.board.Answer;
import kr.co.hta.fp.vo.board.FAQ;
import kr.co.hta.fp.vo.board.Question;

public interface BoardDao {
	List<FAQ> allFAQList(Pagination pagination);
	void submitQuestion(Question question);
	void submitAdminQuestion(AdminQuestion adminQuestion);
	/*List<QuestionForm> allQuestionList(Map<String, Object> searchqna);*/
	List<QuestionForm> allQuestionList(Pagination pagination);
	/*List<AdminQuestion> allAdminQuestionList(Map<String, Object> searchqna);*/
	List<AdminQuestion> allAdminQuestionList(Pagination pagination);
	List<AdminQuestion> companyAdminQuestionList(Pagination pagination);
	List<AdminQuestion> userAdminQuestionList(Pagination pagination);
	QuestionForm getQuestionByNo(int questionNo);
	void addAnswer(Answer answer);
	Answer getAnswerByNo(int questionNo);
	AdminQuestion getAdminQuestionByNo(int questionNo);
	void addAdminAnswer(AdminAnswer adminAnswer);
	AdminAnswer getAdminAnswerByNo(int questionNo);
	void modifyQStatus(int questionNo);
	void modifyAStatus(int questionNo);
	int getAllFAQCount();
	int getAllQuestionCount(Pagination pagination);
	int getAllAdminQuestionCount(Pagination pagination);
	int CadminCount();
	int UadminCount();
}
