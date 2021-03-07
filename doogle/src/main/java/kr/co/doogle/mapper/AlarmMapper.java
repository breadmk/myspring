package kr.co.doogle.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.co.doogle.dto.AlarmDTO;
import kr.co.doogle.dto.AlarmProductDTO;
import kr.co.doogle.dto.MemberDTO;
import kr.co.doogle.dto.ProductDTO;

@Mapper
public interface AlarmMapper {
	
	@Insert("insert into alarm values (s_alarm.nextval,#{dto.mno},#{dto.pno},sysdate)")
	int insert(@Param("dto") AlarmDTO dto);
	
	@Select("select * from alarm order by writedate desc")
	List<AlarmDTO> getAll();
	
	@Select("select name,quantity,pno from product where pno=#{pno}")
	List<ProductDTO> getQuantity(int pno);
	
	@Select("select name,phone,email from member where mno=#{mno}")
	MemberDTO getMailPhone(int mno);
	
	@Select("select name from product where pno=#{pno}")
	String productName(int pno);
}
