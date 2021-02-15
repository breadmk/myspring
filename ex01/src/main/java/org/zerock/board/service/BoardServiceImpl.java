package org.zerock.board.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.zerock.board.mapper.BoardMapper;
import org.zerock.board.vo.BoardVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.webjjang.util.PageObject;

@Service
@Log4j
@Qualifier("boardServiceImpl")
@AllArgsConstructor // 생성자를 이용한 모든 속성을 자동 DI 시킨다.
public class BoardServiceImpl implements BoardService{
	
	private BoardMapper mapper; //@AllArgsConstructor를 이용해서 자동 DI 된다.

	@Override
	public List<BoardVO> list(PageObject pageObject) {
		log.info("-- 게시판 리스트 ----");
		log.info(pageObject);
		//getRow() 메서드를 이용해서 전체데이터를 셋팅하면 계산이 되어진다.
		pageObject.setTotalRow(mapper.getRow(pageObject));
		return mapper.list(pageObject);
	}

	@Override
	public BoardVO view(int no, int inc) {
		//inc가 1일때만 조회수 증가 -> 데이터 가져오기
		if(inc==1)
			mapper.increase(no);
		return mapper.view(no);
	}

	@Override
	public void write(BoardVO vo) {
		mapper.write(vo);
	}

	@Override
	public void update(BoardVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(BoardVO vo) {
		mapper.delete(vo);
	}

}
