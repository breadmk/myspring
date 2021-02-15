package org.zerock.board.mapper;

import java.util.List;

import org.zerock.board.vo.BoardVO;

import net.webjjang.util.PageObject;

public interface BoardMapper {

	// list - 전체 데이터 구하기(페이지 처리)
	public List<BoardVO> list(PageObject pageObject);
	public Integer getRow(PageObject pageObject);
	// view - 조회수 1증가
	public BoardVO view(int no);
	public void increase(int no);
	// write 
	public void write(BoardVO vo);
	// update 
	public void update(BoardVO vo);
	// delete - no,pw
	public void delete(BoardVO vo);
}
