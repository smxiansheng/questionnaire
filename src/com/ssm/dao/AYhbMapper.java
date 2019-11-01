package com.ssm.dao;

import java.util.List;

import com.ssm.model.AYhb;
import com.ssm.model.CBumen;

public interface AYhbMapper {
	int deleteByPrimaryKey(String aDcrid);

	int insert(AYhb record);

	int insertSelective(AYhb record);

	AYhb selectByPrimaryKey(String aDcrid);

	int updateByPrimaryKeySelective(AYhb record);

	int updateByPrimaryKey(AYhb record);

	List<AYhb> selectByPrimaryName(String name);

	List<AYhb> selectByprimaryListName(String name);
	
	AYhb selectByidname(AYhb record);
	
	List<AYhb> selectByBumen(List<CBumen> bumens);
	
	
}