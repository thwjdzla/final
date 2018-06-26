package kr.co.hta.fp.service;

import javax.mail.MessagingException;

import org.springframework.transaction.annotation.Transactional;

import kr.co.hta.fp.vo.User;

@Transactional
public interface SimpleVelocityMailService {

	void sendTextMail(User user);
	void sendHtmlMail(User user) throws MessagingException;
}
