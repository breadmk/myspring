package kr.co.doogle.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.doogle.dto.QuestionDTO;
import net.webjjang.util.PageObject;
	
@Mapper
public interface QuestionMapper {
//	자주하는질문 작성
	@Insert("insert into question (qno,title,content,ctno,type,writedate) "
			+ " values (s_question.nextval,#{dto.title},#{dto.content},#{dto.ctno},#{dto.type},sysdate)")
	int insert(@Param("dto") QuestionDTO dto);
//	자주하는질문 리스트 조회	
	@Select("select * from  (select rownum rnum,qno,title,content,ctno,type,writedate from " + 
	        " (select qno,title,content,ctno,type,writedate from question where type='y'"+ 
    		" order by qno desc)) where rnum between #{startRow} and #{endRow}")
	List<QuestionDTO> getAll(PageObject pageObject);
	
	@Select("select * from  (select rownum rnum,qno,title,content,ctno,type,writedate from " + 
	        " (select qno,title,content,ctno,type,writedate from question where ctno=#{no} and type='y'"+ 
    		" order by qno desc)) where rnum between #{pageObject.startRow} and #{pageObject.endRow}")
	List<QuestionDTO> getAll_1(@Param("no")String no, PageObject pageObject);
	
//	자주하는질문 페이징처리를 위한 레코드 조회
	@Select("select count(*) from question")
	int getRow(PageObject pageObject);
	
//	자주하는질문 페이징처리를 위한 레코드 조회
	@Select("select count(*) from question where ctno=#{no}")
	int getRow1(PageObject pageObject,@Param("no")String no);
	
//	자주하는질문 삭제
	@Delete("delete from question where qno=#{param1}")
	int delete(@Param("qno") int qno);
	
	@Select("select * from question where qno=#{param1}")
	QuestionDTO getOne(@Param("qno") int qno);
	
	@Update("update question set title=#{title},content=#{content},type=#{type},ctno=#{ctno} where qno=#{qno}")
	int update(QuestionDTO dto);
}
