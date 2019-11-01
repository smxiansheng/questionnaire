package com.ssm.dao;

import com.ssm.model.AScpz;

public interface AScpzMapper {
    int deleteByPrimaryKey(Integer aScid);

    int insert(AScpz record);

    int insertSelective(AScpz record);

    AScpz selectByPrimaryKey(Integer aScid);

    int updateByPrimaryKeySelective(AScpz record);

    int updateByPrimaryKey(AScpz record);
}