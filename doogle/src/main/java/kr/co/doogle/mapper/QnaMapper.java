package kr.co.doogle.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.type.JdbcType;

import kr.co.doogle.dto.QnaDTO;
import net.webjjang.util.PageObject;

@Mapper
public interface QnaMapper {
	
	@Insert("insert into qna (qnno,mno,ono,title,content,ctno,name,email,email_yn,phone,phone_yn,fno,writedate)"+
			" values(s_qna.nextval,#{dto.mno},#{dto.ono},#{dto.title},#{dto.content},#{dto.ctno}, " +
			" #{dto.name},#{dto.email},#{dto.email_yn},#{dto.phone},#{dto.phone_yn},#{dto.fno},sysdate)")
	int insert(@Param("dto") QnaDTO dto);
	
	@Select("select * from (select rownum rnum,qnno,mno,ono,title,content, "+
			" ctno,name,email,email_yn,phone,phone_yn,fno,writedate " +
			" from (select qnno,mno,ono,title,content, " +
			" ctno,name,email,email_yn,phone,phone_yn,fno,writedate "+
			" from qna order by qnno desc) ) where rnum between #{startRow} and #{endRow}")
	@Result(property = "content", column = "content", jdbcType = JdbcType.CLOB, javaType = String.class)
	List<QnaDTO> getAll(PageObject pageObject);
	
	@Select("select count(*) from qna")
	int getRow(PageObject pageObject);
	
	@Delete("delete from qna where qnno=#{param1}")
	int delete(int qnno);
	
}
