package kr.co.hta.fp.dao;

import java.util.List;

import kr.co.hta.fp.form.ReviewCriteria;
import kr.co.hta.fp.vo.board.Review;

public interface ReviewDao {
	void insertReview(Review review);
	List<Review> selectReview(ReviewCriteria reviewCriteria);
	void deleteReview(int no);
	void updateReview(Review review);
	int countReview(int no);
	Float avgGrade(int no);
}
