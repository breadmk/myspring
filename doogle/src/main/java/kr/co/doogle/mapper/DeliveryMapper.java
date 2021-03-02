package kr.co.doogle.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.doogle.dto.DeliveryDTO;
import kr.co.doogle.dto.DeliveryMemberDTO;
import kr.co.doogle.dto.NoticeDTO;


@Mapper
public interface DeliveryMapper {
	
	@Insert("insert into delivery(dno,mno,addr,addr_detail,receive_name,phone,writedate,default_yn,type) "+ 
			" values (s_delivery.nextval,#{dto.mno}, #{dto.addr}, #{dto.addr_detail}, "+
			" #{dto.receive_name}, #{dto.phone}, sysdate,#{dto.default_yn},#{dto.type})")
	int insert(@Param("dto") DeliveryDTO dto);
	
	@Select("select m.mno,m.name,m.addr,m.addr_detail, m.phone from delivery d inner join member m " +
			" on d.mno = m.mno where m.id=#{param1}")
	DeliveryMemberDTO get_one(String id);

	@Select("select * from delivery where mno=#{param1} order by dno asc")
	List<DeliveryDTO> getAll(int mno);

	@Select("select mno from member where id=#{param1}")
	int getId(String id);
	
	@Select("select addr from delivery where mno=#{param1}")
	ArrayList<String> getAddr(int mno);
	
	@Select("select addr from delivery where dno=#{param1}")
	String updateGet(String dno);
	
	@Update("update delivery set addr_detail=#{dto.addr_detail},receive_name=#{dto.receive_name},phone=#{dto.phone} where dno=#{dno}")
	int update(DeliveryDTO dto,@Param("dno") String dno);

	@Delete("delete from delivery where dno=#{param1}")
	int delete(@Param("dno") String dno);
	
	@Select("select dno from delivery where REGEXP_LIKE (addr,'^[서울,인천,경기]{2}')")
	ArrayList<Integer> addrRegexp();
	
	@Update("update delivery set default_yn='y' where dno=#{param1}")
	void defaultUpdate(String dno);
	
	@Update("update delivery set default_yn='n'")
	void defaultUpdateNo();
}
