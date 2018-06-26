package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.CompanyDao;
import kr.co.hta.fp.form.CompanyForm;
import kr.co.hta.fp.vo.Pagination;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyDao companyDao;

	@Override
	public List<CompanyForm> getAllCompany(Pagination pagination) {
		return companyDao.getAllCompany(pagination);
	}

	@Override
	public List<CompanyForm> getCompanyByStatus(Pagination pagination) {
		return companyDao.getCompanyByStatus(pagination);
	}

	@Override
	public void updateStatusCompany(Map<String, Object> usCompany) {
		companyDao.updateStatusCompany(usCompany);
	}

	@Override
	public int getAllCountByCompany() {
		return companyDao.getAllCountByCompany();
	}

	@Override
	public int getCountByCompanyStatus(String status) {
		return companyDao.getCountByCompanyStatus(status);
	}
}
