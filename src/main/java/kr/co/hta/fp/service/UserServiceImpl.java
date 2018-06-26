package kr.co.hta.fp.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.dao.ReserveDao;
import kr.co.hta.fp.dao.UserDao;
import kr.co.hta.fp.exception.FpException;
import kr.co.hta.fp.vo.Membership;
import kr.co.hta.fp.vo.Pagination;
import kr.co.hta.fp.vo.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private ReserveDao reserveDao;
	
	@Override
	public List<User> getAllUsersByType(Pagination pagination) {
		return userDao.getAllUsersByType(pagination);
	}

	@Override
	public User getDetailUser(int no, String id) {
		
		Map<String, Object> detail = new HashMap<String, Object>();
		
		detail.put("no", no);
		detail.put("id", id);
		
		return userDao.getDetailUser(detail);
	}

	@Override
	public String updateStatus(String status, int no) {
		
		Map<String, Object> updateInfo = new HashMap<String, Object>();
		updateInfo.put("status", status);
		updateInfo.put("no", no);
		userDao.updateStatus(updateInfo);
		
		String id = "";
		Map<String, Object> detail = new HashMap<String, Object>();
		detail.put("no", no);
		detail.put("id", id);
		User user = userDao.getDetailUser(detail);
		
		if (user.getType().equals("U")) {
			return "redirect:/admin/customerlist.do";
		}
		
		return "redirect:/admin/companylist.do";
	}

	@Override
	public void addUser(User user) {
		
		Map<String, Object> checkId = new HashMap<String, Object>();
		checkId.put("id", user.getId());
		
		User checkUser = userDao.getDetailUser(checkId);
		if (checkUser != null) {
			throw new FpException("입력한 아이디가 이미 사용중입니다.");
		}
		userDao.addUser(user);
	}
	
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	
	@Override
	public void dropuser(int no) {
		userDao.dropuser(no);
	}

	@Override
	public User getUserByNo(int no) {
		return userDao.getUserByNo(no);
	}

	@Override
	public int getAllUserCount(String type) {
		return userDao.getAllUserCount(type);
	}
	
	@Override
	public User searchById(String id) {
		return userDao.searchById(id);
	}
	
	@Override
	public Membership membership(int no) {
		return reserveDao.getUserMembershipByNo(no);
	}

	@Override
	public User getUserByPaNo(int no) {
		return userDao.getUserByPaNo(no);
	}
}
