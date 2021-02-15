package org.zerock.board.service;

import java.util.List;

import org.zerock.board.vo.ReplyVo;

import net.webjjang.util.PageObject;

public interface ReplyService {

	public List<ReplyVo> list(PageObject pageObject,int no);
	// 댓글 내용이 간단하므로 list에 내용을 다 표시하기 때문에 필요없다.(content)
	public Integer write(ReplyVo vo);
	public Integer update(ReplyVo vo);
	public Integer dalete(int rno);
	
}
