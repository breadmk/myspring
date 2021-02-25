package kr.co.doogle.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.co.doogle.dto.BasketProductDTO;

@Mapper
public interface BasketMapper {

	@Select("select b.sbno, b.pno, p.pno jpno, p.pname from basket b left join product p on b.pno = p.pno where b.sbno = 1")
	BasketProductDTO getBasketProduct();
	
}