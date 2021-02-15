package org.zerock.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import lombok.extern.log4j.Log4j;

@ControllerAdvice // 요청한 url을 처리하면서 나오는 예외를 처리해 주는 클래스.
@Log4j //log 객체를 만들어준다.
public class CommonExceptionAdvice {
	
	// 예외를 처리하는 메소드
	@ExceptionHandler(Exception.class) //예외의 종류가 Exception인 것을 처리한다.
	public String exception(Exception ex, Model model) {
		log.error("Exception......................"+ex.getMessage());
		model.addAttribute("exception",ex);
		return "error_page";
	}
}
