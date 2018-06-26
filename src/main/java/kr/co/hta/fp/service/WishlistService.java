package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.Wishlist;

@Transactional
public interface WishlistService {
	void addWishlist(Wishlist wishlist);
	List<Wishlist> selectWishlist(int no);
	Wishlist selectWishlistbyNo(int no);
	void deleteWishlist(int no);
}
