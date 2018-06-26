package kr.co.hta.fp.dao;

import java.util.List;

import kr.co.hta.fp.vo.Wishlist;

public interface WishListDao {
	void addWishlist(Wishlist wishlist);
	List<Wishlist> selectWishlist(int no);
	Wishlist selectWishlistbyNo(int no);
	void deleteWishlist(int no);
}
