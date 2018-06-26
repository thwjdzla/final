package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.vo.Site;

public interface SiteDao  {
	List<Site> selectSite(int no);
	void addSite(Site site);
	void deleteSite(Map<String, Object> map);
}
