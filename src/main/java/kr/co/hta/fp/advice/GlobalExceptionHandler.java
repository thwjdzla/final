package kr.co.hta.fp.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import kr.co.hta.fp.exception.FpException;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(FpException.class)
	public String handlerException(FpException ex) {
		return "error/500.jsp";
	}
	
	@ExceptionHandler(Exception.class)
	public String handlerException(Exception ex) {
		ex.printStackTrace();
		return "error/500.jsp";
	}
}
