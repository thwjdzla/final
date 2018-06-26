package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.ReviewDao;
import kr.co.hta.fp.form.ReviewCriteria;
import kr.co.hta.fp.vo.board.Review;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewDao reviewDao;
	
	@Override
	public void insertReview(Review review) {
		reviewDao.insertReview(review);
	}
	@Override
	public void deleteReview(int no) {
		reviewDao.deleteReview(no);
	}
	@Override
	public List<Review> selectReview(ReviewCriteria reviewCriteria) {
		return reviewDao.selectReview(reviewCriteria);
	}
	@Override
	public void updateReview(Review review) {
		reviewDao.updateReview(review);
	}	
	@Override
	public int countReview(int no) {
		return reviewDao.countReview(no);
	}
	@Override
	public float avgGrade(int no) {
		return reviewDao.avgGrade(no);
	}
}
