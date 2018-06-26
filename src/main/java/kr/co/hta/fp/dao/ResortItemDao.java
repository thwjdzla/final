package kr.co.hta.fp.dao;

import java.util.List;

import kr.co.hta.fp.form.ItemForm;
import kr.co.hta.fp.form.ResortItemForm;
import kr.co.hta.fp.vo.resort.ResortItem;

public interface ResortItemDao {

	List<ResortItemForm> getResortItemList(int userNo);
	void addResortItem(ResortItem resortItem);
	ResortItem getResortItemByNo(int no);
	List<ItemForm> getResortItemsByNo(int no);
	int getResortItemQty(int no);
	List<ResortItem> getResortItemByCpNo(int cpNo);
	void delResortItem(int no);
	List<ResortItem> allResortItemName();
	void updateResortItem(ResortItem resortItem);
}
