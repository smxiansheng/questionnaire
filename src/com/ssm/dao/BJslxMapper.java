package com.ssm.dao;

import java.util.List;

import com.ssm.model.BJslx;

public interface BJslxMapper {
    int deleteByPrimaryKey(Integer jslxid);

    int insert(BJslx record);

    int insertSelective(BJslx record);

    BJslx selectByPrimaryKey(Integer jslxid);

    int updateByPrimaryKeySelective(BJslx record);

    int updateByPrimaryKey(BJslx record);

	List<BJslx> findAllTechnology();

	List<BJslx> searchTechnologyByName(String str);
}