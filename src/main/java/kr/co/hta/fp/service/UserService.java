package kr.co.hta.fp.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.Membership;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.User;

@Transactional
public interface UserService {

	List<User> getAllUsersByType(Pagination pagination);
	User getDetailUser(int no, String id);
	String updateStatus(String status, int no);
	void addUser(User user);
	void updateUser(User user);
	void dropuser(int no);
	User getUserByNo(int no);
	int getAllUserCount(String type);
	User searchById(String id);
	Membership membership(int no);
	User getUserByPaNo(int no);
}
