package kr.co.doogle.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.doogle.dto.DeliveryDTO;


@Mapper
public interface DeliveryMapper {
	
	@Insert("insert into delivery(dno,mno,addr,addr_detail,receive_name,phone,writedate,default_yn) "+ 
			" values (s_delivery.nextval,#{dto.mno}, #{dto.addr}, #{dto.addr_detail}, "+
			" #{dto.receive_name}, #{dto.phone}, sysdate,#{dto.default_yn})")
	int insert(@Param("dto") DeliveryDTO dto);
}
