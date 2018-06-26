package kr.co.hta.fp.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.form.CompanyForm;
import kr.co.hta.fp.vo.Pagination;

@Transactional
public interface CompanyService {

	List<CompanyForm> getAllCompany(Pagination pagination);
	List<CompanyForm> getCompanyByStatus(Pagination pagination);
	void updateStatusCompany(Map<String, Object> usCompany);
	int getAllCountByCompany();
	int getCountByCompanyStatus(String status);
}
