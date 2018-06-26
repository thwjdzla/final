package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.form.ReviewCriteria;
import kr.co.hta.fp.vo.board.Review;

@Transactional
public interface ReviewService {
	void insertReview(Review review);
	List<Review> selectReview(ReviewCriteria reviewCriteria);
	void deleteReview(int no);
	void updateReview(Review review);
	int countReview(int no);
	float avgGrade(int no);
}
