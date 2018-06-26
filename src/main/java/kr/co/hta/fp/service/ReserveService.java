package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.form.PayInfo;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.form.ReserveForm;
import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.vo.Membership;
import kr.co.hta.fp.vo.PointList;
import kr.co.hta.fp.vo.User;
import kr.co.hta.fp.vo.concert.ConcertItem;

@Transactional
public interface ReserveService {
	PayInfo getUserPayInfo(User user);
	Object getItemValue(List<ProductInfo> items, String cpName) throws Exception;
	String getReserveSuccess(ProductInfo productInfo);
	Map<String, Object> getCpItems(Map<String, Object> map) throws Exception;
	int getItemReserve(ProductInfo productInfo);
	void addReserve(ReserveForm reserveForm);
	List<ReserveStringForm> getUserReserveByNo(int no) throws Exception;
	List<ReserveStringForm> getReserveRank();
	Membership getUserMembershipByNo(int userNo);
	void userRefund(ReserveStringForm reserveStringForm);
	void companyRefund(ReserveStringForm reserveStringForm);
	List<ReserveStringForm> getCompanyReserveByNoAndType(int no, String type) throws Exception;
	List<ReserveStringForm> getUserReserveListPaging(Map<String, Object> map) throws Exception;
	int getUserReserveCount(Map<String, Object> map);
	int getCompanyReserveCount(Map<String, Object> map);
	List<ReserveStringForm> getCompanyReserveListPaging(Map<String, Object> map) throws Exception;
	List<PointList> getUserPointList(Map<String, Object> map);
	ConcertItem searchConcertItem(Map<String, Object> map);
	Map<String, Object> getCpMap(Map<String, Object> map);
}
