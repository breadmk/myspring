package org.zerock.board.mapper;

import java.util.List;
import java.util.Map;

import org.zerock.board.vo.ReplyVo;

import net.webjjang.util.PageObject;

public interface ReplyMapper {

	// list - 전체 데이터 구하기(페이지 처리)
	// pageObject와 no가 포함된 Map을 넘겨줄 것이다.
	public List<ReplyVo> list(Map<String, Object> pageInfo);
	public int getRow(int no);
	public Integer write(ReplyVo vo);
	public Integer update(ReplyVo vo);
	public Integer delete(int rno);
}
