package kr.co.hta.fp.dao;

import java.util.List;
import java.util.Map;

import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.User;

public interface UserDao {

	List<User> getAllUsersByType(Pagination pagination);
	User getDetailUser(Map<String, Object> detail);
	void updateStatus(Map<String, Object> updateInfo);
	void addUser(User user);
	void updateUser(User user);
	void dropuser(int no);
	User getUserByNo(int no);
	void reserveDataUpdate(Map<String, Object> map);
	int getAllUserCount(String type);
	User searchById(String id);
	User getUserByPaNo(int no);
}
