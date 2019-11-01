package com.ssm.dao;

import com.ssm.model.AJyzt;

public interface AJyztMapper {
    int deleteByPrimaryKey(Integer aJyztid);

    int insert(AJyzt record);

    int insertSelective(AJyzt record);

    AJyzt selectByPrimaryKey(Integer aJyztid);

    int updateByPrimaryKeySelective(AJyzt record);

    int updateByPrimaryKey(AJyzt record);
}