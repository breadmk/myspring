package org.zerock.image.service;

import java.util.List;

import org.zerock.image.vo.ImageVO;

import net.webjjang.util.PageObject;

public interface ImageService {
	
	//list
	public List<ImageVO> list(PageObject pageObject);
	//view
	public ImageVO view(int no);
	//write
	public void write(ImageVO vo);
	//update
	public void update(ImageVO vo);
	//delete
	public void delete(ImageVO vo);
}
