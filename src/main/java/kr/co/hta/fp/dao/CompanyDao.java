package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.form.CompanyForm;
import kr.co.hta.fp.vo.Company;
import kr.co.hta.fp.vo.Pagination;

public interface CompanyDao {

	void addCompany(Company company);
	List<Company> allCompany();
	List<Company> getCpNo(int no);
	List<CompanyForm> getAllCompany(Pagination pagination);
	List<CompanyForm> getCompanyByStatus(Pagination pagination);
	void updateStatusCompany(Map<String, Object> usCompany);
	int getCountByCompanyStatus(String status);
	int getAllCountByCompany();
	Company getCompanyByCpNo(int no);
	void deleteCompany(int no);
}
