package org.zerock.image.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ImageVO {
	private int no;
	private String title,content,writer,fileName;
	private Date writeDate;
	
}
