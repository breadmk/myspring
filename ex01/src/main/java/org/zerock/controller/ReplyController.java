package org.zerock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.board.service.ReplyService;
import org.zerock.board.vo.ReplyVo;

import lombok.extern.log4j.Log4j;
import net.webjjang.util.PageObject;

//자동으로 있는 어노테이션
@RestController // 순수한 데이터를 전달할때 사용한다.
@Log4j
public class ReplyController {
	
	@Autowired
	@Qualifier("replyServiceImpl")
	private ReplyService service;
	//댓글쓰기
	// ResponseEntity : 데이터와 서버의 처리상태를 함께 넘겨준다. (200-정상처리)를 함께 넘겨준다.
	//Type: Function( Anything data, String textStatus, jqXHR jqXHR ) (데이터,성공/실패메세지,통신객체)
	@PostMapping(value="/ajax/replyWrite.do",
			// 헤더 확인 - view.jsp의 ajax 셋팅
			//contentType:"application/json; charset=utf-8",
			consumes = "application/json", 
			// 리턴해 주는 데이터의 타입
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> write(@RequestBody ReplyVo vo){
		log.info(vo);
		int insertCount = service.write(vo);
		log.info("Reply Insert Count: " +insertCount);
		log.info(HttpStatus.OK);
		return (insertCount ==1)
				? new ResponseEntity<String>("success.write",HttpStatus.OK)
				:new ResponseEntity<String>("500",HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
		//댓글리스트
		// ResponseEntity : 데이터와 서버의 처리상태를 함께 넘겨준다. (200-정상처리)를 함께 넘겨준다.
		//Type: Function( Anything data, String textStatus, jqXHR jqXHR ) (데이터,성공/실패메세지,통신객체)
		@GetMapping(value="/ajax/replyList.do",
				// 헤더 확인 - view.jsp의 ajax 셋팅
				//contentType:"application/json; charset=utf-8",
				consumes = "application/json", 
				// 리턴해 주는 데이터의 타입
				produces = {MediaType.APPLICATION_XML_VALUE,
							MediaType.APPLICATION_JSON_UTF8_VALUE})
		public ResponseEntity<List<ReplyVo>> list(PageObject pageObject, int no){
			log.info(pageObject);
			log.info(no);
			List<ReplyVo> list = service.list(pageObject,no);
			log.info("list: " +list);
			log.info(HttpStatus.OK);
			return (list != null && list.size()>0)
					? new ResponseEntity<>(list,HttpStatus.OK)
					:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		//댓글수정
		// ResponseEntity : 데이터와 서버의 처리상태를 함께 넘겨준다. (200-정상처리)를 함께 넘겨준다.
		//Type: Function( Anything data, String textStatus, jqXHR jqXHR ) (데이터,성공/실패메세지,통신객체)
		@RequestMapping(
				method= {RequestMethod.PUT,RequestMethod.PATCH},
				value="/ajax/replyUpdate.do",
				// 헤더 확인 - view.jsp의 ajax 셋팅
				//contentType:"application/json; charset=utf-8",
				consumes = "application/json", 
				// 리턴해 주는 데이터의 타입
				produces = {MediaType.TEXT_PLAIN_VALUE})
		public ResponseEntity<String> update(@RequestBody ReplyVo vo){
			log.info(vo);
			int insertCount = service.update(vo);
			log.info("Reply Insert Count: " +insertCount);
			log.info(HttpStatus.OK);
			return (insertCount ==1)
					? new ResponseEntity<String>("success.write",HttpStatus.OK)
					:new ResponseEntity<String>("500",HttpStatus.INTERNAL_SERVER_ERROR);
		}
}


