package kr.co.doogle.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.type.JdbcType;

import kr.co.doogle.dto.NoticeDTO;
import net.webjjang.util.PageObject;

@Mapper
public interface NoticeMapper {
	
	//공지사항 등록 
	@Insert("insert into notice(type,nno,name,title,content,writeDate,state) " +
	" values (#{dto.type},s_notice.nextval,#{dto.name},#{dto.title},#{dto.content},sysdate,#{dto.state})")
	int insert(@Param("dto") NoticeDTO dto);
	//페이지처리를 위한 전체 조회 쿼리
	@Select("select * from (select rownum rnum,nno,name,title,content,writedate,read_cnt,state,type from "+ 
			" (select nno,name,title,content,writedate,read_cnt,state,type from notice where type='y' "+
			" order by nno desc)) where rnum between #{startRow} and #{endRow}")
	@Result(property = "content", column = "content", jdbcType = JdbcType.CLOB, javaType = String.class)
	List<NoticeDTO> getAll(PageObject pageObject);
	//페이지처리를 위한 레코드 총 갯수 처리.
	@Select("select count(*) from notice")
	int getRow(PageObject pageObject);
	
	//단일 계정 조회
	@Select("select * from notice where nno=#{param1}")
	NoticeDTO getOne(@Param("no") int no);
	
	//이전글 다음글 조회
	@Select("select * from (select nno,title, lead(title,1) over(order by nno) next, " 
			+" lag(title,1) over(order by nno) prev from notice) where nno = #{param1}")
	NoticeDTO pre_nex(@Param("no") int no);
	// 공지사항 수정
	@Update("update notice set name = #{name},state=#{state},title=#{title},content=#{content} where nno=#{nno}")
	int update(NoticeDTO dto);
	
	@Delete("delete from notice where nNo=#{param1}")
	int delete(@Param("no") int no);
	
	//연습
	
}