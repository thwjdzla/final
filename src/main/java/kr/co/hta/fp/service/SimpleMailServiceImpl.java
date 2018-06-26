package kr.co.hta.fp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import kr.co.hta.fp.vo.User;

@Service
public class SimpleMailServiceImpl implements SimpleMailService{

	@Autowired
	MailSender mailSender;
	
	@Autowired
	SimpleMailMessage templateMailMessage;
	
	@Override
	public void sendConfirmMail(String to, String content) {
		SimpleMailMessage message = new SimpleMailMessage(templateMailMessage);
		message.setTo(to);
		message.setSubject("인증번호 발송");
		message.setText(content);
		
		mailSender.send(message);		
	}
	
	@Override
	public void sendMail(User user) {
		SimpleMailMessage message = new SimpleMailMessage(templateMailMessage);
	
		message.setTo(user.getEmail());
		message.setText(user.getName() + "님 가입이 완료되었습니다.");
		
		mailSender.send(message);
	}
	
}
