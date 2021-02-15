package org.zerock.image.mapper;

import java.util.List;

import org.zerock.image.vo.ImageVO;

import net.webjjang.util.PageObject;

public interface ImageMapper {

	// list - 전체 데이터 구하기(페이지 처리)
	public List<ImageVO> list(PageObject pageObject);
	public Integer getRow(PageObject pageObject);
	public ImageVO view(int no);
	// write 
	public void write(ImageVO vo);
	// update 
	public void update(ImageVO vo);
	// delete - no,pw
	public void delete(ImageVO vo);
}
