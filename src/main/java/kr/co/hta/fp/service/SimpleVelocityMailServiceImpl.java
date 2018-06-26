package kr.co.hta.fp.service;

import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import kr.co.hta.fp.vo.User;

@Service
public class SimpleVelocityMailServiceImpl implements SimpleVelocityMailService {

	@Autowired
	JavaMailSenderImpl mailSender;
	
	@Autowired
	VelocityEngine velocityEngine;
	
	@Autowired
	SimpleMailMessage templateMailMessage;
	
	@Override
	public void sendTextMail(User user) {
		
		SimpleMailMessage message = new SimpleMailMessage(templateMailMessage);
		
		message.setTo(user.getEmail());
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("username", user.getName());
		model.put("msg", user.getName() + "고객님, 회원가입이 완료되었습니다.");
		
		String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "./META-INF/templates/text-email.vm", "utf-8", model);
		message.setText(text);
		
		mailSender.send(message);	
	}
	
	@Override
	public void sendHtmlMail(User user) throws MessagingException {
		
		MimeMessage mimeMessage = mailSender.createMimeMessage();
		// 만약 첨부파일을 사용해야하면 “utf-8”, true); 라고 적어야 한다.
				MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
				
				helper.setTo(user.getEmail());
				
				Map<String, Object> model = new HashMap<String, Object>();
				model.put("username", user.getName());
				model.put("msg", user.getName() + "고객님, 회원가입이 완료되었습니다.");
				
				String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "./META-INF/templates/html-email.vm", "utf-8", model);
		// true면 html , false면 html이 아니다.
				helper.setText(text, true);
				
				mailSender.send(mimeMessage);
	}
}
