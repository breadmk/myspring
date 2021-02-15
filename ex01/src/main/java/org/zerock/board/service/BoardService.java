package org.zerock.board.service;

import java.util.List;

import org.zerock.board.vo.BoardVO;

import net.webjjang.util.PageObject;

public interface BoardService {
	
	//list
	public List<BoardVO> list(PageObject pageObject);
	//view
	public BoardVO view(int no, int inc);
	//write
	public void write(BoardVO vo);
	//update
	public void update(BoardVO vo);
	//delete
	public void delete(BoardVO vo);
}
