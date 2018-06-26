package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.Site;

@Transactional
public interface SiteService {
	List<Site> selectSite(int no);
	void addSite(Site site);
	void deleteSite(Map<String, Object> map);
}
