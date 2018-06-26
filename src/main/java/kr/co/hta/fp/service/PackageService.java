package kr.co.hta.fp.service;
import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.form.PackageForm;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.form.ReserveStringForm;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.PackageReceiver;
import kr.co.hta.fp.vo.Pagination;

@Transactional
public interface PackageService {
	Package selectPackageByNo(int no);
	List<PackageApplicant> getPackageBoardList(Pagination pagination);
	PackageApplicant getPackageApplicantByNo(int no);
	void submitPackageReceiver(PackageReceiver receiver);
	List<PackageApplicant> getMyPackageApplicantByNo(Pagination pagination);
	List<PackageApplicant> getMyPackageReceiverByNo(Pagination pagination);
	void addPackageApplicant(PackageApplicant applicant);
	List<PackageReceiver> getPackageReceiverBypaNo(int no);
	void canclePackageApplicant(int no);
	void canclePackageReceiver(int no);
	List<PackageReceiver> getPabyPr(int no);
	void contractPackage(Map<String, Object> numbers);
	List<Package> getPackagebyHotel(int no);
	List<Package> getPackagebyResort(int no);
	List<Package> getPackagebyConcert(int no);
	void addOneItemPackage(ProductInfo productInfo);
	String getOnePackageByProductInfo(ProductInfo productInfo);
	void updateCount(Map<String, Integer> map);
	List<PackageForm> selectrecentPackage();
	int getPackageListCount();
	int getMyReceiverCount(int no);
	int getMyApplicantCount(int no);
	boolean getPackageReserve(int no);
	void cancleFromPa(int no);
	void canclePackageByPrNo(int no);
}
