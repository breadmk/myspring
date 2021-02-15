package org.zerock.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.zerock.board.mapper.ReplyMapper;
import org.zerock.board.vo.ReplyVo;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.webjjang.util.PageObject;

@Service
@Log4j
@Qualifier("replyServiceImpl")
@AllArgsConstructor // 생성자를 이용한 모든 속성을 자동 DI 시킨다.
public class ReplyServiceImpl implements ReplyService{

	
	private ReplyMapper mapper; 
	
	@Override
	public List<ReplyVo> list(PageObject pageObject,int no) {
		// 전체 데이터를 가져오기 위해서 getRow() 가 필요하다. pageObject에 셋팅해야만 한다.
		pageObject.setTotalRow(mapper.getRow(no));
		log.info(pageObject);
		//mybatis에서는 데이터를 한개만 받도록 설계되어져 있다. 넘겨야할 것은 pageObject와 no를 넘겨야한다 => 하나로 만들어줘야한다. class or map 사용
		Map<String, Object> pageInfo = new HashMap<String, Object>();
		pageInfo.put("pageObject", pageObject);
		pageInfo.put("no", no);
		return mapper.list(pageInfo);
//		return mapper.list(pageObject);
	}

	@Override
	public Integer write(ReplyVo vo) {
		log.info(vo);
		return mapper.write(vo);
	}

	@Override
	public Integer update(ReplyVo vo) {
		return null;
	}

	@Override
	public Integer dalete(int rno) {
		return null;
	}

}
