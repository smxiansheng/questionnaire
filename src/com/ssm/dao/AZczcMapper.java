package com.ssm.dao;

import com.ssm.model.AZczc;

public interface AZczcMapper {
    int deleteByPrimaryKey(Integer aZczcid);

    int insert(AZczc record);

    int insertSelective(AZczc record);

    AZczc selectByPrimaryKey(Integer aZczcid);

    int updateByPrimaryKeySelective(AZczc record);

    int updateByPrimaryKey(AZczc record);
}