package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.vo.Membership;
import kr.co.hta.fp.vo.Reserve;

public interface ReserveDao {
	List<Reserve> getUserReserveByNo(int no);
	int getItemReserve(ProductInfo productInfo);
	void addReserve(Reserve reserve);
	Membership getUserMembershipByNo(int userNo);
	void addMembership(int userNo);
	List<Reserve> getUserReserveByDate(Map<String, Object> map);
	List<ReserveStringForm> getReserveRank();
	void updateMembership(Map<String, Object> map);
	int getPackageReserve(int no);
	void updateReserveStatus(Map<String, Object> map);
	List<Reserve> getCompanyReserveList(Map<String, Object> map);
	Reserve getUserReserveByReserveNo(int reserveNo);
	List<Reserve> getUserReservePaging(Map<String, Object> map);
	int getUserReserveCount(Map<String, Object> map);
	int getCompanyReserveCount(Map<String, Object> map);
	List<Reserve> getCompanyReservePaging(Map<String, Object> map);
}

