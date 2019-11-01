package com.ssm.dao;

import java.util.List;

import com.ssm.model.BJyztlx;

public interface BJyztlxMapper {
    int deleteByPrimaryKey(Integer jyztlxid);

    int insert(BJyztlx record);

    int insertSelective(BJyztlx record);

    BJyztlx selectByPrimaryKey(Integer jyztlxid);

    int updateByPrimaryKeySelective(BJyztlx record);

    int updateByPrimaryKey(BJyztlx record);

	List<BJyztlx> findAllManagement();

	List<BJyztlx> searchManagementByName(String str);
}