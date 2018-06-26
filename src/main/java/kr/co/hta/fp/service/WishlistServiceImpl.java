package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.WishListDao;
import kr.co.hta.fp.vo.Wishlist;

@Service
public class WishlistServiceImpl implements WishlistService {
	@Autowired
	private WishListDao wishlistDao;
	
	@Override
	public void addWishlist(Wishlist wishlist) {
		wishlistDao.addWishlist(wishlist);
	}
	
	@Override
	public List<Wishlist> selectWishlist(int no) {
		return wishlistDao.selectWishlist(no);
	}
	
	@Override
	public void deleteWishlist(int no) {
		wishlistDao.deleteWishlist(no);
	}
	
	@Override
	public Wishlist selectWishlistbyNo(int no) {
		return wishlistDao.selectWishlistbyNo(no);
	}
}
