package org.zerock.board.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Data;
@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
public class ReplyVo {
	
	private int rno,no;
	private String content,writer;
	// 입력할때만 입력 패턴을 지정해준다. - 출력할때는 필요 없음.
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date writeDate;
}
