package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.form.ConcertItemForm;
import kr.co.hta.fp.form.ItemForm;
import kr.co.hta.fp.vo.concert.ConcertItem;

public interface ConcertItemDao {

	List<ConcertItemForm> getConcertItemList(int userNo);
	void addConcertItem(ConcertItem concertItem);
	ConcertItem getConcertItemByNo(int no);
	List<ItemForm> getConcertItemsByNo(int no);
	int getConcertItemQty(int no);
	List<ConcertItem> getConcertItemsByCpNo(int cpNo);
	void delConcertItem(int no);
	void updateConcertItem(ConcertItem concertItem);
	ConcertItem getConcertItemByNameAndDate(Map<String, Object> map);
}