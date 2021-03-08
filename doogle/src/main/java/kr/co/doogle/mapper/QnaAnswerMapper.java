package kr.co.doogle.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.co.doogle.dto.QnaDTO;
import kr.co.doogle.dto.Qna_AnswerDTO;

@Mapper
public interface QnaAnswerMapper {

	@Select({"select qnno,mno,ono,title,content,ctno,name,email,email_yn,phone,phone_yn,fno,writedate from ( select seq,tt.* from "
			+ " ( select rownum seq,t.* from (select * from qna ${where} order by qnno desc ) t) tt where seq >= #{start}) where rownum <=#{end}"})
	List<QnaDTO> getAll(@Param("start") int start, @Param("end")int end, @Param("where")String where, @Param("ctno") Integer ctno);
	
	@Select("select count(*) from qna ${where}")
	int getTotal (@Param("where") String where,@Param("ctno") Integer ctno);
	
	@Select("select title, ctno, name, ono,mno,email,phone,content,qnno from qna where qnno=#{param1}")
	QnaDTO getOne(@Param("no")int qnno);
	
	@Insert("insert into qna_answer values (s_qna_answer.nextval,#{dto.qnno},#{dto.name},#{dto.content},sysdate)")
	int insert(@Param("dto") Qna_AnswerDTO dto);
	
	@Select("select qnno from qna_answer")
	ArrayList<Integer> getQnno();
	
}
