package kr.co.kurly.dao;

import java.util.List;

import kr.co.kurly.dto.DeaDto;
import kr.co.kurly.dto.JungDto;

public interface ProductDao {
	
	public List<DeaDto> get_dea();
	public List<JungDto> get_jung(String deacode);
}
