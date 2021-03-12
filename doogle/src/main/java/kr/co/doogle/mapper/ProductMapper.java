package kr.co.doogle.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.doogle.dto.ProductDTO;

@Mapper
public interface ProductMapper {

	//상품테이블에서 재입고알림을 위해 수량 체크.
	@Select("select name,quantity,pno from product where pno=#{pno}")
	List<ProductDTO> getQuantity(int pno);
}