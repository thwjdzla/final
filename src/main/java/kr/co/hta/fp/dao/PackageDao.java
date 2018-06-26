package kr.co.hta.fp.dao;
import java.util.List;
import java.util.Map;

import kr.co.hta.fp.form.PackageForm;
import kr.co.hta.fp.form.ProductInfo;
import kr.co.hta.fp.vo.DaumMap;
import kr.co.hta.fp.vo.Package;
import kr.co.hta.fp.vo.PackageApplicant;
import kr.co.hta.fp.vo.PackageReceiver;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.ProductInfoForDate;

public interface PackageDao {
	 Package selectPackageByNo(int no);
	 List<PackageApplicant> getPackageBoardList(Pagination pagination);
	 PackageApplicant getPackageApplicant(int no);
	 void submitPackageReceiver(PackageReceiver receiver);
	 List<PackageApplicant> getMyPackageApplicantByNo(Pagination pagination);
	 List<PackageApplicant> getMyPackageReceiverByNo(Pagination pagination);
	 void addPackageApplicant(PackageApplicant applicant);
	 List<PackageReceiver> getPackageReceiverBypaNo(int no);
	 void canclePackageApplicant(int no);
	 void canclePackageReceiver(int no);
	 List<PackageReceiver> getPabyPr(int no);
	 Package needContract(Map<String, Object> numbers);
	 void contractPackage(Package package1);
	 List<Package> getPackagebyHotel(int no);
	 List<Package> getPackagebyResort(int no);
	 List<Package> getPackagebyConcert(int no);
	 Package getPackageByTypeAndItemNo(ProductInfoForDate productInfoForDate);
	 void updatePackageCount(Map<String, Integer> packageMap);
	 List<PackageForm> selectrecentPackage();
	 int getPackageListCount();
	 int getMyReceiverCount(int no);
	 int getMyApplicantCount(int no);
	 void canclePackage(int no);
	 void contractStatus(Map<String, Object> numbers);
	 void cancleFromPa(int no);
	 void contractPackageReceiver(Map<String, Object> map);
	 
	List<Package> searchpackageall();
	
	List<Package> searchPackageByname(String searchkeyword);
}
