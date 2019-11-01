package com.ssm.dao;

import com.ssm.model.AScfs;

public interface AScfsMapper {
    int deleteByPrimaryKey(Integer aScfsid);

    int insert(AScfs record);

    int insertSelective(AScfs record);

    AScfs selectByPrimaryKey(Integer aScfsid);

    int updateByPrimaryKeySelective(AScfs record);

    int updateByPrimaryKey(AScfs record);
}