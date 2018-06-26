package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.SiteDao;
import kr.co.hta.fp.vo.Site;

@Service
public class SiteServiceImpl implements SiteService{
	@Autowired
	private SiteDao siteDao;
	
	@Override
	public List<Site> selectSite(int no) {
		return siteDao.selectSite(no);
	}
	
	@Override
	public void addSite(Site site) {
		siteDao.addSite(site);
	}
	
	@Override
	public void deleteSite(Map<String, Object> map) {
		siteDao.deleteSite(map);
	}
}
