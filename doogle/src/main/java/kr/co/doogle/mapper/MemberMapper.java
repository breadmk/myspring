package kr.co.doogle.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.doogle.dto.MemberDTO;

@Mapper
public interface MemberMapper {
	
	//
	@Select("select mno from member where id=#{param1}")
	int getId(String id);

}