package kr.co.hta.fp.service;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.User;

@Transactional
public interface SimpleMailService {

	void sendMail(User user);
	void sendConfirmMail(String to, String content);
}
