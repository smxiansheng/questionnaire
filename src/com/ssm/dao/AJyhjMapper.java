package com.ssm.dao;

import com.ssm.model.AJyhj;

public interface AJyhjMapper {
    int deleteByPrimaryKey(Integer aJyhjid);

    int insert(AJyhj record);

    int insertSelective(AJyhj record);

    AJyhj selectByPrimaryKey(Integer aJyhjid);

    int updateByPrimaryKeySelective(AJyhj record);

    int updateByPrimaryKey(AJyhj record);
}